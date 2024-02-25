class RecordsController < ApplicationController
  def index
    @tournaments = Tournament.all
    @winners = Winner.all
    @tournament_type = TournamentType.all
  end
end
