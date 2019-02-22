class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.date :agreement_date
      t.boolean :open

      t.timestamps
    end
  end
end
