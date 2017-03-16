# encoding: UTF-8

module Avalara
  module Response
    class TaxAddress < Avalara::Types::Stash
      property :id
      property :transaction_id, :from => :transactionId
      property :boundary_level, :from => :boundaryLevel
      property :line1
      property :line2
      property :line3
      property :city
      property :region
      property :postal_code, :from => :postalCode
      property :country
      property :tax_region_id, :from => :taxRegionId
    end
  end
end
