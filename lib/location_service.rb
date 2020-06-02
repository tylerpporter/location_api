require 'sinatra'
require 'faraday'
require 'yaml'
require 'dotenv'
Dotenv.load('var.env')

class RapidService < Sinatra::Base
  get '/:zip' do
    response = Faraday.get("https://redline-redline-zipcode.p.rapidapi.com/rest/radius.json/#{params['zip']}/10/mile") do |req|
      req.headers['X-RapidAPI-Host'] = 'redline-redline-zipcode.p.rapidapi.com'
      req.headers['X-RapidAPI-Key'] = ENV['X_RAPIDAPI_KEY']
    end
    response.body
  end
end
