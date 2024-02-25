class AddColumnsToWinners < ActiveRecord::Migration[7.0]
  def change
    add_column :winners, :tournament_id, :integer
    add_column :winners, :type, :integer
    add_column :winners, :player_name, :string
    add_column :winners, :result, :string
  end
end
