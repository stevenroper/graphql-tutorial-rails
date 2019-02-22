module Types
  class AccountType < BaseObject
    field :id, ID, null: false
    field :account_number, Int, null: false
    field :agreement_date, String, null: false
    field :open, Boolean, null: false
    field :transactions, [TransactionType], null: false
  end
end