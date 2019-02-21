module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false

    # This is here just for testing purposes
    field :email, String, null: false
  end
end