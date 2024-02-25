class AddColumnsToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :winner_id, :integer
    add_column :cards, :cardname, :string
    add_column :cards, :image_path, :string
    add_column :cards, :mana_value, :integer
    add_column :cards, :is_land, :boolean
    add_column :cards, :use_quantity, :integer
  end
end
