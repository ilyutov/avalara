require "hashie/extensions/symbolize_keys"

# {
#   "version": "17.9.0-127",
#   "authenticated": true,
#   "authenticationType": "AccountIdLicenseKey",
#   "authenticatedUserName": "anonymous@2000188004",
#   "authenticatedUserId": 247126,
#   "authenticatedAccountId": 2000188004
# }

module Avalara
  module Response
    class Ping < Avalara::Types::Stash
      property :version
      property :authenticated
      property :authentication_type, from: :authenticationType
      property :authenticated_user_name, from: :authenticatedUserName
      property :authenticated_user_id, from: :authenticatedUserId
      property :authenticated_account_id, from: :authenticatedAccountId

      def initialize(response)
        super(Hashie::Extensions::SymbolizeKeys.symbolize_keys(response))
      end
    end
  end
end
