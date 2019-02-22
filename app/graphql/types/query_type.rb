module Types
  class QueryType < BaseObject
    field :all_links, function: Resolvers::LinksSearch
    field :all_accounts, [Types::AccountType], null: false

    def all_accounts
      Account.all
    end
  end
end
