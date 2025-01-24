# frozen_string_literal: true

class CreateCompleteSchema < ActiveRecord::Migration[7.2]
  def change
    # Users Table
    create_table :users do |t|
      ## Database authenticatable
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Additional Fields
      t.string :role, default: "user"
      t.string :name

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true

    # Matches Table
    create_table :matches do |t|
      t.date :date
      t.string :teamAway
      t.string :teamHome
      t.string :result

      t.timestamps
    end

    # Predictions Table
    create_table :predictions do |t|
      t.float :percentageHome
      t.float :percentageAway
      t.boolean :percentageAwayFlag
      t.references :match, null: false, foreign_key: true

      t.timestamps
    end
  end
end
