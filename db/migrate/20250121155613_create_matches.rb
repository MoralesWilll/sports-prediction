class CreateMatches < ActiveRecord::Migration[7.2]
  def change
    create_table :matches do |t|
      t.date :date
      t.string :teamAway
      t.string :teamHome
      t.string :result

      t.timestamps
    end
  end
end
