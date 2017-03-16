# encoding: UTF-8

module Avalara
  module Response
    class TaxDetail < Avalara::Types::Stash
      property :id, :from => :id
      property :transaction_line_id, :from => :transactionLineId
      property :transaction_id, :from => :transactionId
      property :address_id, :from => :addressId
      property :country, :from => :country
      property :region, :from => :region
      property :county_f_i_p_s, :from => :countyFIPS
      property :state_f_i_p_s, :from => :stateFIPS
      property :exempt_amount, :from => :exemptAmount
      property :exempt_reason_id, :from => :exemptReasonId
      property :in_state, :from => :inState
      property :juris_code, :from => :jurisCode
      property :juris_name, :from => :jurisName
      property :jurisdiction_id, :from => :jurisdictionId
      property :signature_code, :from => :signatureCode
      property :state_assigned_no, :from => :stateAssignedNo
      property :juris_type, :from => :jurisType
      property :non_taxable_amount, :from => :nonTaxableAmount
      property :non_taxable_rule_id, :from => :nonTaxableRuleId
      property :non_taxable_type, :from => :nonTaxableType
      property :rate, :from => :rate
      property :rate_rule_id, :from => :rateRuleId
      property :rate_source_id, :from => :rateSourceId
      property :ser_code, :from => :serCode
      property :sourcing, :from => :sourcing
      property :tax, :from => :tax
      property :taxable_amount, :from => :taxableAmount
      property :tax_type, :from => :taxType
      property :tax_name, :from => :taxName
      property :tax_authority_type_id, :from => :taxAuthorityTypeId
      property :tax_region_id, :from => :taxRegionId
      property :tax_calculated, :from => :taxCalculated
      property :tax_override, :from => :taxOverride
      property :rate_type, :from => :rateType
      property :taxable_units, :from => :taxableUnits
      property :non_taxable_units, :from => :nonTaxableUnits
      property :exempt_units, :from => :exemptUnits
      property :unit_of_basis, :from => :unitOfBasis
    end
  end
end
