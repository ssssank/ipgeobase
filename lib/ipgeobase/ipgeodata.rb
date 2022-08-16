# frozen_string_literal: true

require "happymapper"

class IpGeoData
  include HappyMapper

  tag "query"
  element :country, String, tag: "country"
  element :countryCode, String, tag: "countryCode"
  element :city, String, tag: "city"
  element :lat, String, tag: "lat"
  element :lon, String, tag: "lon"
end
