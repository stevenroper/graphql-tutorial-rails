class Account < ApplicationRecord
  validates :account_number, presence: true, uniqueness: true
  validates :agreement_date, presence: true

  has_many :transactions
end
