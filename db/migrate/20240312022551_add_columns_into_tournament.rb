class AddColumnsIntoTournament < ActiveRecord::Migration[7.0]
  def change
    add_column :tournaments, :place, :string
    add_column :tournaments, :member, :string
    add_column :tournaments, :remarks, :string
  end
end
