module Types
  class TransactionType < BaseObject
    field :id, ID, null: false
    field :amount, Float, null: false
    field :transaction_type, String, null: false
    field :created_at, String, null: false
  end
end