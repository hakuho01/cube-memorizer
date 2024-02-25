class AddDateAndNameToTournaments < ActiveRecord::Migration[7.0]
  def change
    add_column :tournaments, :date, :date
    add_column :tournaments, :name, :string
  end
end
