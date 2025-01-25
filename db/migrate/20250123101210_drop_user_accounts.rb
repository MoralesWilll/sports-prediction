class DropUserAccounts < ActiveRecord::Migration[7.2]
  def change
    drop_table :user_accounts, if_exists: true
  end
end
