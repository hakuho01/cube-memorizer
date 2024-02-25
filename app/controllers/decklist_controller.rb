class DecklistController < ApplicationController
  def index
    @winner_id = params[:id]
    @winner_name = Winner.find(@winner_id).player_name
    @tournament_name = Tournament.find(Winner.find(@winner_id).tournament_id).name
    @decklist = Card.where(winner_id: @winner_id)
  end
end
