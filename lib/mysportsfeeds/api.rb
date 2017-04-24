module MySportsFeeds
  class Api
    def initialize(username, password, options = {})
      @username = username
      @password = password
      @options = options
    end

    def get(url, params = {})
      request = make_request(url, :get, params)
      response = request.run
      Response::Success.new(JSON.parse(response.response_body), response.response_code)
    rescue JSON::ParserError => e
      Response::Error.new('Couldn\'t connect')
    end

    def make_request(url, method, params = {})
      Typhoeus::Request.new(
        build_url(url),
        method: method,
        params: params,
        userpwd: "#{@username}:#{@password}",
        accept_encoding: "gzip",
        followlocation: true
      )
    end

    private

    def build_url(url)
      "https://www.mysportsfeeds.com/api/feed/pull/nba/#{season.msf_identifier}/#{url}.#{format}"
    end

    def format
      @format ||= @options.fetch(:format, 'json')
    end

    def season
      @season ||= @options.fetch(:season, Season.current)
    end

    def force
      @force ||= @options.fetch(:force, true)
    end
  end
end
