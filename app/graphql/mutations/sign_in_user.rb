module Mutations
  class SignInUser < BaseMutation
    null true

    argument :login, Types::AuthProviderEmailInput, required: false

    field :token, String, null: true
    field :user, Types::UserType, null: true

    def resolve(login: nil)
      return unless login

      user = User.find_by(email: login[:email])

      return unless user
      return unless user.authenticate(login[:password])

      crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
      token = crypt.encrypt_and_sign("user-id:#{user.id}")

      { user: user, token: token }
    end
  end
end