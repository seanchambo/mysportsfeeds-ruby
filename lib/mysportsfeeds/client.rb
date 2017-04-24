module MySportsFeeds
  class Client
    def initialize(username, password,  options = {})
      @api = MySportsFeeds::Api.new(username, password, options)
    end

    def get_cumulative_player_stats
      @api.get('cumulative_player_stats')
    end

    def get_full_game_schedule
      @api.get('full_game_schedule')
    end

    def get_daily_game_schedule(date)
      @api.get('daily_game_schedule', { fordate: date })
    end

    def get_daily_player_stats(date)
      @api.get('daily_player_stats', { fordate: date })
    end

    def get_game_play_by_play(gameid)
      @api.get('game_playbyplay', { gameid: gameid })
    end

    def get_game_box_score(gameid)
      @api.get('game_boxscore', { gameid: gameid })
    end

    def get_scoreboard(date)
      @api.get('scoreboard', { fordate: date })
    end

    def get_roster_players(date)
      @api.get('roster_players', { fordate: date })
    end

    def get_active_players
      @api.get('active_players')
    end

    def get_overall_team_standings
      @api.get('overall_team_standings')
    end

    def get_conference_team_standings(team_stats)
      @api.get('conference_team_standings')
    end

    def get_division_team_standings(team_stats)
      @api.get('division_team_standings')
    end

    def get_playoff_team_standings(team_stats)
      @api.get('playoff_team_standings')
    end

    def get_player_injuries
      @api.get('player_injuries')
    end

    def get_latest_updates
      @api.get('latest_updates')
    end

    def get_daily_dfs(date)
      @api.get('daily_dfs', { fordate: date })
    end

    def api
      @api
    end
  end
end
