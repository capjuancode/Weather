<img width="746" alt="image" src="https://github.com/user-attachments/assets/039d2bbb-005a-45c1-a0fa-f16b9cc1617a">


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

## Usage

### Weather Forecast
- The application provides a global variable `forecast`, which contains:
  - A 7-day weather forecast.
  - Today's weather.
- The forecast data is fetched using the `open_weather` gem to optimize performance.

### Address Autocomplete
- Integrated with the Google Places API for:
  - Location search functionality.
  - Address autocomplete for standardization.
- A prebuilt Google Maps API template is used to enhance user experience and enable location-based search.

## Installation

1. **Clone the Repository**
  ```bash
  git clone <repository-url>
  cd <repository-directory>
  ```
2. Install Dependencies
  ```bash
   bundle install
  ```
3. Set Up API Keys
  - Add your OpenWeather and Google Places API keys to the Rails credentials store:
  ```bash
  rails credentials:edit --environment=development
  ```
4. Include the following keys(if not included):
  ```bash
  open_weather_api_key: <YOUR_API_KEY>
  google_places_api_key: <YOUR_API_KEY>
  ```
5. Start the Rails Server
  ```bash
  rails server
  ```
6. Access the Application
  - Open your browser and navigate to http://localhost:3000.

Let me know if any refinements are needed!


  

