require 'net/http'

class Api::V1::DoctorsController < ApplicationController
  API_KEY = "b11729170be9a2a2e52b2f92b92aed38"

  def search
    name = params["name"]

    if name
      response = data_cache(name) do

        url = URI.parse("https://api.betterdoctor.com/2014-09-12/doctors?name=#{name}&user_key=#{API_KEY}")
        puts url
        req = Net::HTTP::Get.new(url.to_s)

        res = Net::HTTP.start(url.host, url.port, :use_ssl => url.scheme == 'https') {|http|
          http.request(req)
        }

        debugger;
        res
      end

      render json: response.body, status: response.code
    else
      #render error if query string doesn't exist
      results = {
        message: "Validation Failed",
        errors: [
          {
            resource: "doctors/search",
            field: "name",
            message: "can't be blank"
          }
        ]
      }

      render json: results, status: 422

    end

  end

  private

end
