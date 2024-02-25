class CreateWinners < ActiveRecord::Migration[7.0]
  def change
    create_table :winners do |t|

      t.timestamps
    end
  end
end
