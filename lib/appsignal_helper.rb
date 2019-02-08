require "appsignal_helper/version"
require 'json'
require 'faraday'
require 'dotenv/load'
require './appsignal_api.rb'
require './api_helper.rb'

module AppsignalHelper
  class Error < StandardError; end
  # Your code goes here...
end
