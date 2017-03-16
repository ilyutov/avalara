# encoding: UTF-8

module Avalara
  Error = Class.new(StandardError)
  TimeoutError = Class.new(Error)
  NotImplementedError = Class.new(Error)
  class ApiError < Class.new(Error) do

      attr_reader :response

      def initialize(response = nil)
        @response = response
        super
      end

    end
  end

end
