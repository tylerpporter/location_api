require 'sinatra'
require 'faraday'
require 'yaml'
CONFIG =  YAML.load_file('application.yml')

class RapidService < Sinatra::Base
  get '/:zip' do
    response = Faraday.get("https://redline-redline-zipcode.p.rapidapi.com/rest/radius.json/#{params['zip']}/10/mile") do |req|
      req.headers['X-RapidAPI-Host'] = 'redline-redline-zipcode.p.rapidapi.com'
      req.headers['X-RapidAPI-Key'] = CONFIG['X-RapidAPI-Key']
    end
    response.body
  end
end
