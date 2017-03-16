module Avalara
  module Response
    class AddressLine < Avalara::Types::Stash
      property :line_1, from: :line1
      property :line_2, from: :line2
      property :line_3, from: :line3
      property :city, from: :city
      property :region, from: :region
      property :postal_code, from: :postalCode
      property :country, from: :country
      property :latitude, from: :latitude
      property :longitude, from: :longitude
    end
  end
end
