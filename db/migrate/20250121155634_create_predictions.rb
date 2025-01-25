class CreatePredictions < ActiveRecord::Migration[7.2]
  def change
    create_table :predictions do |t|
      t.float :percentageHome
      t.float :percentageAway
      t.boolean :percentageAwayFlag
      t.references :match, null: false, foreign_key: true

      t.timestamps
    end
  end
end
