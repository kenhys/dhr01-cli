# frozen_string_literal: true

require_relative '../../command'

module Dhr01
  module Cli
    module Commands
      class Firmware
        class Check < Dhr01::Cli::Command
          def initialize(options)
            @options = options
            @config = Dhr01::Cli::Config.new
          end

          def execute(input: $stdin, output: $stdout)
            @firmware = Dhr01::Cli::Firmware.new(config: @config)
            @firmware.check_version
          end
        end
      end
    end
  end
end
