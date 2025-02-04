class HomeController < ApplicationController
  layout "home"

  def index
    @matches = @matches = [
      {
        team1_name: "AC Milan",
        team1_logo: "logos/examples/acm.png",
        team2_name: "Bayern Munchen",
        team2_logo: "logos/examples/bayern.png",
        datetime: "2023-11-15 20:45",
        stadium: "Allianz Arena"
      },
      {
        team1_name: "Chelsea Football Club",
        team1_logo: "logos/examples/chelsea.png",
        team2_name: "FC Barcelona",
        team2_logo: "logos/examples/fcb.png",
        datetime: "2023-11-16 19:00",
        stadium: "Camp Nou"
      },
      {
        team1_name: "Juventus",
        team1_logo: "logos/examples/juventus.png",
        team2_name: "Liverpool",
        team2_logo: "logos/examples/liverpool.png",
        datetime: "2023-11-17 21:00",
        stadium: "Anfield"
      },
      {
        team1_name: "Manchester City",
        team1_logo: "logos/examples/mancity.png",
        team2_name: "Manchester United",
        team2_logo: "logos/examples/manunited.png",
        datetime: "2023-11-18 17:30",
        stadium: "Old Trafford"
      },
      {
        team1_name: "PSG",
        team1_logo: "logos/examples/psg.png",
        team2_name: "Real Madrid",
        team2_logo: "logos/examples/realm.png",
        datetime: "2023-11-19 20:00",
        stadium: "Santiago Bernabeu"
      }
    ]
  end
end