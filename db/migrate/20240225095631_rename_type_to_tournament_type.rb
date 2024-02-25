class RenameTypeToTournamentType < ActiveRecord::Migration[7.0]
  def change
    rename_column :winners, :type, :tournament_type
  end
end
