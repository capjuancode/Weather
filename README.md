# Weather and Places API Integration

This project is a Ruby on Rails application built with **Ruby 3.2.2** and **Rails 7.1.5**. It leverages external APIs for weather forecasting and address standardization without the need for Active Record models.

## Features

- **Weather Information**: 
  - Utilizes the `open_weather` gem to fetch a 7-day forecast plus today's weather.
  - The forecast data is stored in a global variable called `forecast` for quick access.

- **Address Standardization**:
  - Integrates with the Google Places API to enable location search and address autocomplete.
  - A custom template is used for implementing the Google Maps API for seamless user experience.

## Dependencies

### Gems
- **`open-weather-ruby-client`**: Provides weather forecast data.
  - Documentation: [open-weather-ruby-client gem](https://github.com/dblock/open-weather-ruby-client)

### APIs
- **Google Places API**:
  - Used for location search and address standardization.
  - Documentation: [Google Places API](https://developers.google.com/maps/documentation/places)

## Configuration

### API Keys
Both the OpenWeather API and Google Places API require API keys for proper functionality. These keys are securely stored in the Rails secret key store. Ensure you have the following keys set up:

- `open_weather_api_key`: For the `open_weather` gem.
- `google_maps_api_key`: For the Google Places API.

To add keys to the Rails credentials store:
```bash
rails credentials:edit --environment=development
```
Please request code owner for secrete key
