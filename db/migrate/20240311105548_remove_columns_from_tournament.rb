class RemoveColumnsFromTournament < ActiveRecord::Migration[7.0]
  def change
    remove_column :tournaments, :tournament_id, :integer
    add_column :events, :tournament_id, :integer
  end
end
