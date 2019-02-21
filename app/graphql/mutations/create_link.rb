module Mutations
  class CreateLink < Mutations::BaseMutation

    argument :description, String, required: true
    argument :url, String, required: true

    type Types::LinkType

    def resolve(description: nil, url: nil)
      Link.create!(
        description: description,
        url: url
      )
    end
  end
end