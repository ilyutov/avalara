# encoding: UTF-8

module Avalara
  module Request
    class Line < Avalara::Types::Stash
      property :number
      property :quantity, :required => true
      property :amount, :required => true
      property :description
      property :taxCode, :from => :tax_code
      property :customerUsageType, :from => :customer_usage_type
      property :itemCode, :from => :item_code
      property :exemptionCode, :from => :exemption_code
      property :discounted
      property :taxIncluded, :from => :tax_included
      property :revenueAccount, :from => :revenue_account
      property :ref1
      property :ref2
      property :description
      property :businessIdentificationNo, :from => :business_identification_no
    end
  end
end
