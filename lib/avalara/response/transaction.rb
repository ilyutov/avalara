# encoding: UTF-8

require 'hashie/extensions/symbolize_keys'

module Avalara
  module Response
    class Transaction < Avalara::Types::Stash

      coerce_key :messages, Array[Avalara::Response::Message]
      coerce_key :lines, Array[Avalara::Response::TaxLine]
      coerce_key :addresses, Array[Avalara::Response::TaxAddress]

      property :id
      property :code
      property :company_id, :from => :companyId
      property :date
      property :tax_date, :from => :taxDate
      property :payment_date, :from => :paymentDate
      property :status
      property :type
      property :batch_code, :from => :batchCode
      property :currency_code, :from => :currencyCode
      property :customer_usage_type, :from => :customerUsageType
      property :customer_vendor_code, :from => :customerVendorCode
      property :exempt_no, :from => :exemptNo
      property :reconciled
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
      property :locked
      property :region
      property :country
      property :version
      property :software_version, :from => :softwareVersion
      property :origin_address_id, :from => :originAddressId
      property :destination_address_id, :from => :destinationAddressId
      property :exchange_rate_effective_date, :from => :exchangeRateEffectiveDate
      property :exchange_rate, :from => :exchangeRate
      property :is_seller_importer_of_record, :from => :isSellerImporterOfRecord
      property :description
      property :email
      property :modified_date, :from => :modifiedDate
      property :modified_user_id, :from => :modifiedUserId
      property :lines, :from => :Lines
      property :addresses, :from => :Addresses
      property :summary, :from => :Summary
      property :messages, :from => :Messages

      def initialize(response)
        super(Hashie::Extensions::SymbolizeKeys.symbolize_keys(response))
      end

    end
  end
end
