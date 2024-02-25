class ChangeTournamentTypeTypeToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :winners, :tournament_type, :integer
  end
end
