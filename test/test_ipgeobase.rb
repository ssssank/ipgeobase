# frozen_string_literal: true

require "test_helper"

class TestIpgeobase < Minitest::Test
  def setup
    @ip = "8.8.8.8"
    stub_request(:get, "http://ip-api.com/xml/#{@ip}")
      .with(
        headers: {
          "Accept" => "*/*",
          "User-Agent" => "Ruby"
        }
      )
      .to_return(status: 200, body: get_fixture("/fixtures/8888.xml"), headers: {})
  end

  def test8888
    ip_meta = Ipgeobase.lookup(@ip)

    assert { ip_meta.city == "Ashburn" }
    assert { ip_meta.country == "United States" }
    assert { ip_meta.countryCode == "US" }
    assert { ip_meta.lat == "39.03" }
    assert { ip_meta.lon == "-77.5" }
  end
end
