# encoding: UTF-8

module Avalara
  module Request
    class TaxOverride < Avalara::Types::Stash
      coerce_key :taxDate, Avalara::Types::Date

      property :type, required: true
      property :taxAmount, from: :tax_amount
      property :taxDate, from: :tax_date
      property :reason
    end
  end
end
