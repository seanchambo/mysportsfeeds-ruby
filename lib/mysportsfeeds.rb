require 'typhoeus'
require 'json'
require 'base64'

require 'mysportsfeeds/client'
require 'mysportsfeeds/api'
require 'mysportsfeeds/response'
require 'mysportsfeeds/version'

module MySportsFeeds
  DEFAULT_TIMEZONE = Time.find_zone! 'Eastern Time (US & Canada)'
end
