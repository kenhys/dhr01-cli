# frozen_string_literal: true

require 'thor'

module Dhr01
  module Cli
    # Handle the application command line parsing
    # and the dispatch to various command objects
    #
    # @api public
    class CLI < Thor
      # Error raised by this runner
      Error = Class.new(StandardError)

      desc 'version', 'dhr01-cli version'
      def version
        require_relative 'version'
        puts "v#{Dhr01::Cli::VERSION}"
      end
      map %w(--version -v) => :version
    end
  end
end
