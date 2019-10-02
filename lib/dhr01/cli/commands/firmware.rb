# frozen_string_literal: true

require_relative '../command'

module Dhr01
  module Cli
    module Commands
      class Firmware < Dhr01::Cli::Command
        def initialize(version, options)
          @version = version
          @options = options
        end

        def execute(input: $stdin, output: $stdout)
          # Command logic goes here ...
          output.puts "OK"
        end
      end
    end
  end
end
