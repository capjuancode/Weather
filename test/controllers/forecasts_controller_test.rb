require "test_helper"

class ForecastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forecasts_url
    assert_response :success
  end

  test "should renders index with forecasts" do
    params = {
      forecast: {
      address: "Miami, FL, USA",
      latitude: '25.7616798', 
      longitude: '-80.1917902'
    }}
    
    get forecasts_url, xhr: true, params: params.merge(format: :html)
    
    assert_includes @response.body, "forecast-expanded"
    assert_match @controller.view_assigns['forecasts'].first['summary'], @response.body
  end
end
