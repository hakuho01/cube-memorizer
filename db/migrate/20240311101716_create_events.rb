class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.date :date
      t.string :place
      t.string :member
      t.string :tournament
      t.string :winner_list
      t.string :remarks

      t.timestamps
    end
  end
end
