module Avalara
  module Response
    class AddressLine < Avalara::Types::Stash
      property :line1
      property :line2
      property :line3
      property :city
      property :region
      property :postal_code, from: :postalCode
      property :country
      property :latitude
      property :longitude
    end
  end
end
