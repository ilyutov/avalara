require "hashie/extensions/symbolize_keys"

module Avalara
  module Response
    class Address < Avalara::Types::Stash
      coerce_key :address, Avalara::Response::AddressLine
      coerce_key :validated_addresses, Array[Avalara::Response::AddressLine]
      coerce_key :messages, Array[Avalara::Response::Message]

      property :address
      property :validated_addresses, :from => :validatedAddresses
      property :coordinates
      property :resolution_quality, :from => :resolutionQuality
      property :tax_authorities, :from => :taxAuthorities
      property :messages

      def initialize(response)
        super(Hashie::Extensions::SymbolizeKeys.symbolize_keys(response))
      end
    end
  end
end
