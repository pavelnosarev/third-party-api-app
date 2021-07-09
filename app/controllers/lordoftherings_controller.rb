class LordoftheringsController < ApplicationController
  def index
    response = HTTP.auth("Bearer #{Rails.application.credentials.lordoftherings[:api_key]}").get("https://the-one-api.dev/v2/movie")
    render json: response.parse(:json)
  end
end
