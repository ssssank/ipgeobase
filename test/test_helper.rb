# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "ipgeobase"

require "minitest/autorun"
require "bundler/setup"
Bundler.require

require "webmock/minitest"

def get_fixture(path)
  file = File.new(File.dirname(__FILE__) + path, "r:UTF-8")
  file.read
end
