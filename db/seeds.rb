# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |num|
  account = Account.create!(
    account_number: 201900000 + num,
    agreement_date: Time.new,
    open: num % 2 > 0
  )
  25.times do |transCount|
    Transaction.create(
      account_id: account.id,
      amount: (transCount + 1) * 10,
      transaction_type: transCount % 2 == 0 ? 'contribution' : 'withdrawal'
    )
  end
end