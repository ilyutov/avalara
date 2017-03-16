module Avalara
  module Response
    class AddressLine < Avalara::Types::Stash
      property :line_1, from: :line1
      property :line_2, from: :line2
      property :line_3, from: :line3
      property :city
      property :region
      property :postal_code, from: :postalCode
      property :country
      property :latitude
      property :longitude
    end
  end
end
