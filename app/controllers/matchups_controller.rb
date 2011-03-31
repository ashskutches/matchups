class MatchupsController < ApplicationController
  expose(:matchups) { Matchup.all }
  expose(:matchup)
  expose(:tips) { matchup.tips }
  expose(:tip) { matchup.tips.new }
end
