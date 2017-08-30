class SearchController < ApplicationController
  def index
    search = params[:q]

    @conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json") do |faraday|
      faraday.headers["API-Key"] = ENV["api_key"]
      faraday.adapter  Faraday.default_adapter
    end

    response = @conn.get("fuel_type=&zip=#{search}&limit=6")
  end

end

#
# https://developer.nrel.gov/api/alt-fuel-stations/v1.json?
# fuel_type=E85,ELEC
# &state=CA&
# limit=2&
# api_key=3rnpPSszHWLRwYU2eWj7tVhgCF59MPvCNJeMrUrH&format=JSON
