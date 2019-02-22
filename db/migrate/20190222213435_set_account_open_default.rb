class SetAccountOpenDefault < ActiveRecord::Migration[5.2]
  def up
    change_column :accounts, :open, :boolean, default: false
  end

  def down
    change_column :accounts, :open, :boolean, default: nil
  end
end
