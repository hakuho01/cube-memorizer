class DecklistController < ApplicationController
  def index
    @winner_id = params[:id]
    @winner = Winner.find(@winner_id)
    @winner_name = @winner.player_name
    @tournament_name = Tournament.find(Winner.find(@winner_id).tournament_id).name
    @decklist = Card.where(winner_id: @winner_id)
    @tournament_type = TournamentType.all
  end
end
