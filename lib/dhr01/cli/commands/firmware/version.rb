# frozen_string_literal: true

require_relative '../../command'

module Dhr01
  module Cli
    module Commands
      class Firmware
        class Version < Dhr01::Cli::Command
          def initialize(options)
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
end
