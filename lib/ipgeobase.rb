# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "ipgeobase/ipgeodata"
require "uri"
require "net/http"
require "happymapper"

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    uri = URI("http://ip-api.com/xml/#{ip}")
    res = Net::HTTP.get_response(uri)
    IpGeoData.parse(res.body, single: true)
  end
end
