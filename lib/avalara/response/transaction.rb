# encoding: UTF-8

require 'hashie/extensions/symbolize_keys'

module Avalara
  module Response
    class Transaction < Avalara::Types::Stash

      property :id, :from => :id
      property :code, :from => :code
      property :company_id, :from => :companyId
      property :date, :from => :date
      property :tax_date, :from => :taxDate
      property :payment_date, :from => :paymentDate
      property :status, :from => :status
      property :type, :from => :type
      property :batch_code, :from => :batchCode
      property :currency_code, :from => :currencyCode
      property :customer_usage_type, :from => :customerUsageType
      property :customer_vendor_code, :from => :customerVendorCode
      property :exempt_no, :from => :exemptNo
      property :reconciled, :from => :reconciled
      property :location_code, :from => :locationCode
      property :purchase_order_no, :from => :purchaseOrderNo
      property :reference_code, :from => :referenceCode
      property :salesperson_code, :from => :salespersonCode
      property :tax_override_type, :from => :taxOverrideType
      property :tax_override_amount, :from => :taxOverrideAmount
      property :tax_override_reason, :from => :taxOverrideReason
      property :total_amount, :from => :totalAmount
      property :total_exempt, :from => :totalExempt
      property :total_tax, :from => :totalTax
      property :total_taxable, :from => :totalTaxable
      property :total_tax_calculated, :from => :totalTaxCalculated
      property :adjustment_reason, :from => :adjustmentReason
      property :adjustment_description, :from => :adjustmentDescription
      property :locked, :from => :locked
      property :region, :from => :region
      property :country, :from => :country
      property :version, :from => :version
      property :software_version, :from => :softwareVersion
      property :origin_address_id, :from => :originAddressId
      property :destination_address_id, :from => :destinationAddressId
      property :exchange_rate_effective_date, :from => :exchangeRateEffectiveDate
      property :exchange_rate, :from => :exchangeRate
      property :is_seller_importer_of_record, :from => :isSellerImporterOfRecord
      property :description, :from => :description
      property :email, :from => :email
      property :modified_date, :from => :modifiedDate
      property :modified_user_id, :from => :modifiedUserId
      property :lines, :from => :Lines
      property :addresses, :from => :Addresses
      property :summary, :from => :Summary
      property :messages, :from => :Messages

      def initialize(response)
        super(Hashie::Extensions::SymbolizeKeys.symbolize_keys(response))
      end

      def success?
        status == 'Success'
      end

      def Messages=(new_messages)
        self.messages = []
        new_messages.each do |message|
          self.messages << Message.new(message)
        end
      end

      def Lines=(lines)
        self.lines = []
        lines.each do |line|
          self.lines << TaxLine.new(line)
        end
      end

      def Addresses=(addresses)
        self.addresses = []
        addresses.each do |address|
          self.addresses << TaxAddress.new(address)
        end
      end

    end
  end
end
