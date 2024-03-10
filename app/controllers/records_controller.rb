class RecordsController < ApplicationController
  def index
    @tournaments = Tournament.all
    @winners = Winner.all.order(:id)
    @tournament_type = TournamentType.all
  end
end
