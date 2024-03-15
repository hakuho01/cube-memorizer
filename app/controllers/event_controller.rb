class EventController < ApplicationController
  def index
    @tournaments = Tournament.all.order(date: :desc)
  end

  def show
    @tournament_id = params[:id]
    @tournament = Tournament.find(@tournament_id)
    @winners = Winner.where(tournament_id: @tournament_id)
    @tournament_type = TournamentType.all
  end
end
