module Types
  class QueryType < BaseObject
    field :all_links, function: Resolvers::LinksSearch
    field :accounts, [Types::AccountType], null: false
    field :account, Types::AccountType, null: false do
      argument :id, ID, required: true
    end

    def accounts
      Account.all
    end

    def account(id:)
      Account.find(id)
    end
  end
end
