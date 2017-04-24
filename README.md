# MySportsFeeds

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mysportsfeeds-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mysportsfeeds-ruby

## Usage

Create a client:

```ruby
client = MySportsFeeds::Client.new('YOUR_USERNAME', 'YOUR_PASSWORD', { season: '2017-playoff' })
```

Make some calls:

```ruby
response = client.get_cumulative_player_stats
response.body         # JSON dump of the response body
response.status_code  # Response status code
```

List of available methods:

```ruby
client.get_cumulative_player_stats
client.get_full_game_schedule
client.get_daily_game_schedule(date)
client.get_daily_player_stats(date)
client.get_game_play_by_play(gameid)
client.get_game_box_score(gameid)
client.get_scoreboard(date)
client.get_roster_players(date)
client.get_active_players
client.get_overall_team_standings
client.get_conference_team_standings(team_stats)
client.get_division_team_standings(team_stats)
client.get_playoff_team_standings(team_stats)
client.get_player_injuries
client.get_latest_updates
client.get_daily_dfs(date)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mysportsfeeds-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
