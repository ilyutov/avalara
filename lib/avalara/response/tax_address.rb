# encoding: UTF-8

module Avalara
  module Response
    class TaxAddress < Avalara::Types::Stash
      property :id, :from => :id
      property :transaction_id, :from => :transactionId
      property :boundary_level, :from => :boundaryLevel
      property :line1, :from => :line1
      property :line2, :from => :line2
      property :line3, :from => :line3
      property :city, :from => :city
      property :region, :from => :region
      property :postal_code, :from => :postalCode
      property :country, :from => :country
      property :tax_region_id, :from => :taxRegionId
    end
  end
end
