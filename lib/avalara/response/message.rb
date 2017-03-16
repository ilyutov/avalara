# encoding: UTF-8

module Avalara
  module Response
    class Message < Avalara::Types::Stash
      property :summary, :from => :summary
      property :details, :from => :details
      property :refers_to, :from => :refersTo
      property :severity, :from => :severity
      property :source, :from => :source
    end
  end
end
