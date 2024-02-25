class CreateTournamentTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :tournament_types do |t|
      t.string :tournament_type_ja

      t.timestamps
    end
  end
end
