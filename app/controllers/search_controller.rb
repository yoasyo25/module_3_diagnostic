class SearchController < ApplicationController
  def index
    search = params[:q]

    # @conn = Faraday.new(url: "https://api.data.gov/nrel/alt-fuel-stations/v1.json?") do |faraday|
    #   faraday.headers['X-Api-Key'] = ENV["api_key"]
    #   faraday.adapter  Faraday.default_adapter
    # end
    # @conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?") do |faraday|
    #   faraday.headers['Api-key'] = ENV["api_key"]
    #   faraday.adapter  Faraday.default_adapter
    # end
    #
    # response = @conn.get("fuel_type=ELEC,LPG&zip=#{search}&limit=10")

    response = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?api_key=3rnpPSszHWLRwYU2eWj7tVhgCF59MPvCNJeMrUrH&fuel_type=ELEC,LPG&zip=80202&limit=10"

    results = JSON.parse(response.body)

    @altfuels = results.map do |result|
      Altfuel.new(result)
    end
  end
end
