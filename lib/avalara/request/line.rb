# encoding: UTF-8

module Avalara
  module Request
    class Line < Avalara::Types::Stash
      property :number, :from => :number
      property :quantity, :from => :quantity, :required => true
      property :amount, :from => :amount, :required => true
      property :description, :from => :description
      property :taxCode, :from => :tax_code
      property :customerUsageType, :from => :customer_usage_type
      property :itemCode, :from => :item_code
      property :exemptionCode, :from => :exemption_code
      property :discounted, :from => :discounted
      property :taxIncluded, :from => :tax_included
      property :revenueAccount, :from => :revenue_account
      property :ref1, :from => :ref1
      property :ref2, :from => :ref2
      property :description, :from => :description
      property :businessIdentificationNo, :from => :business_identification_no
    end
  end
end
