class LordoftheringsController < ApplicationController
  def index
    response = HTTP.auth("Bearer #{Rails.application.credentials.lotr[:api_key]}").get("https://the-one-api.dev/v2/movie")
    render json: response.parse(:json)
  end
end
