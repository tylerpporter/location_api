require_relative 'test_helper'
require './lib/location_service.rb'

class RapidServiceTest < Minitest::Test
    include Rack::Test::Methods

    def app
      RapidService
    end

    def test_it_returns_zipcode_info
      resp = get '/80005'

      formatted = JSON.parse(resp.body, symbolize_names: true)
      expected = formatted[:zip_codes].any? {|hsh| hsh[:zip_code] == '80005'}

      assert formatted[:zip_codes].first[:zip_code]
      assert_equal 'Golden', formatted[:zip_codes].first[:city]
      assert expected
    end
end
