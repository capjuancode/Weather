OpenWeather::Client.configure do |config|
  config.api_key = Rails.application.credentials[:open_weather_api_key]
  config.units = 'imperial'
end