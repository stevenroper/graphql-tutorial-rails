class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :account
      t.float :amount
      t.string :type

      t.timestamps
    end
  end
end
