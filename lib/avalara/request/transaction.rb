# encoding: UTF-8
require 'multi_json'

module Avalara
  module Request
    # Same as GetTaxRequest
    class Transaction < Avalara::Types::Stash
      coerce_key :date, Avalara::Types::Date
      coerce_key :TaxOverride, TaxOverride

      # Set outgoing

      property :type
      property :code
      property :companyCode, :from => :company_code, :required => true
      property :date, :required => true
      property :salespersonCode, :from => :salesperson_code
      property :customerCode, :from => :customer_code, :required => true
      property :customerUsageType, :from => :customer_usage_type
      property :discount
      property :purchaseOrderNo, :from => :purchase_order_no
      property :exemptionNo, :from => :exemption_no
      property :Addresses, :from => :addresses
      property :Lines, :from => :lines
      property :referenceCode, :from => :reference_code
      property :reportingLocationCode, :from => :reporting_location_code
      property :commit
      property :batchCode, :from => :batch_code
      property :TaxOverride, :from => :tax_override
      property :taxDate, :from => :tax_date
      property :currencyCode, :from => :currency_code
      property :serviceMode, :from => :service_mode
      property :exchangeRate, :from => :exchange_rate
      property :exchangeRateEffectiveDate, :from => :exchange_rate_effective_date
      property :posLaneCode, :from => :pos_lane_code
      property :businessIdentificationNo, :from => :business_identification_no
      property :isSellerImporterOfRecord, :from => :is_seller_importer_of_record
      property :description
      property :email
      property :debugLevel, :from => :debug_level

      def addresses=(addresses)
        self.Addresses = {}
        addresses.each do |key, address|
          self.Addresses[key] = Address.new(address)
        end
      end

      def lines=(lines)
        self.Lines = lines.map do |line|
          Line.new(line)
        end
      end

      def to_json
        MultiJson.encode(self.to_hash, :pretty => true)
      end
    end
  end
end
