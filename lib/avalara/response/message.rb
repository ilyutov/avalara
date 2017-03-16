# encoding: UTF-8

module Avalara
  module Response
    class Message < Avalara::Types::Stash
      property :summary
      property :details
      property :refers_to, :from => :refersTo
      property :severity
      property :source
    end
  end
end
