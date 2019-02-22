class Transaction < ApplicationRecord
  validates :amount, presence: true
  validates :transaction_type, presence: true

  belongs_to :account
end
