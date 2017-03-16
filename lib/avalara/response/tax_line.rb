# encoding: UTF-8

module Avalara
  module Response
    class TaxLine < Avalara::Types::Stash
      coerce_key :details, Array[Avalara::Response::TaxDetail]

      property :id
      property :transaction_id, :from => :transactionId
      property :line_number, :from => :lineNumber
      property :boundary_override_id, :from => :boundaryOverrideId
      property :customer_usage_type, :from => :customerUsageType
      property :description
      property :destination_address_id, :from => :destinationAddressId
      property :origin_address_id, :from => :originAddressId
      property :discount_amount, :from => :discountAmount
      property :discount_type_id, :from => :discountTypeId
      property :exempt_amount, :from => :exemptAmount
      property :exempt_cert_id, :from => :exemptCertId
      property :exempt_no, :from => :exemptNo
      property :is_item_taxable, :from => :isItemTaxable
      property :is_s_s_t_p, :from => :isSSTP
      property :item_code, :from => :itemCode
      property :line_amount, :from => :lineAmount
      property :quantity
      property :ref1
      property :ref2
      property :reporting_date, :from => :reportingDate
      property :rev_account, :from => :revAccount
      property :sourcing
      property :tax
      property :taxable_amount, :from => :taxableAmount
      property :tax_calculated, :from => :taxCalculated
      property :tax_code, :from => :taxCode
      property :tax_code_id, :from => :taxCodeId
      property :tax_date, :from => :taxDate
      property :tax_engine, :from => :taxEngine
      property :tax_override_type, :from => :taxOverrideType
      property :tax_override_amount, :from => :taxOverrideAmount
      property :tax_override_reason, :from => :taxOverrideReason
      property :tax_included, :from => :taxIncluded
      property :details, :from => :Details

    end
  end
end
