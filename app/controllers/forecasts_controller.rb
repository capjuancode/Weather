class ForecastsController < ApplicationController
  before_action :set_forecasts, only: %i[index]
  before_action :set_address, only: %i[index]

  # GET /forecasts or /forecasts.json
  # set_forecast is called
  def index; end

  # GET /forecasts/1 or /forecasts/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_forecasts
    if forecast_params['address'].present?
      @forecasts = Rails.cache.fetch(forecast_params['address'], expires_in: 30.minutes) do
        if forecast_params['latitude']&.present?
          OpenWeather::Client.new.one_call(lat: forecast_params['latitude'], lon: forecast_params['longitude'])['daily'] 
        end
      end
    end

    @forecasts ||= []
  end

  def set_address
    @address = forecast_params[:address]
  end

  # Only allow a list of trusted parameters through.
  def forecast_params
    return {} unless params['forecast'].present?

    params.fetch(:forecast).permit(:address, :latitude, :longitude)
  end
end
