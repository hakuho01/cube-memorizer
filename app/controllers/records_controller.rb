# class RecordsController
class RecordsController < ApplicationController
  def index
    @tournaments = Tournament.all
    @winners = Winner.all.order(id: :desc)
    @tournament_type = TournamentType.all
  end
end
