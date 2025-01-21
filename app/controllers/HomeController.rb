class HomeController < ApplicationController
  def index
    @matches = [
      { team1: 'Real Madrid', team2: 'Barcelona', match_date: Date.new(2025, 1, 23), time: '20:00' },
      { team1: 'Liverpool', team2: 'Manchester United', match_date: Date.new(2025, 1, 24), time: '18:30' },
      { team1: 'Bayern Munich', team2: 'Dortmund', match_date: Date.new(2025, 1, 25), time: '21:00' },
      { team1: 'Juventus', team2: 'AC Milan', match_date: Date.new(2025, 1, 26), time: '19:45' },
      { team1: 'Paris Saint-Germain', team2: 'Marseille', match_date: Date.new(2025, 1, 27), time: '22:00' }
    ]
  end
end
