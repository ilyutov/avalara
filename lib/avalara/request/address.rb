# encoding: UTF-8

module Avalara
  module Request
    class Address < Avalara::Types::Stash
      property :line1, :from => :line_1
      property :line2, :from => :line_2
      property :line3, :from => :line_3
      property :city, :from => :city
      property :region, :from => :region
      property :country, :from => :country
      property :postalCode, :from => :postal_code
      property :latitude, :from => :latitude
      property :longitude, :from => :longitude
    end
  end
end
