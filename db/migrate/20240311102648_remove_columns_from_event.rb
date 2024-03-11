class RemoveColumnsFromEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :tournaments, :tournament_id, :integer
    remove_columns :events, :date, :tournament, :winner_list
  end
end
