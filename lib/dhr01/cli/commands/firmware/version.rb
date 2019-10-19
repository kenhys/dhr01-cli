# frozen_string_literal: true

require_relative '../../command'
require "dhr01/cli/firmware"

module Dhr01
  module Cli
    module Commands
      class Firmware
        class Version < Dhr01::Cli::Command
          def initialize(options)
            @options = options
            @config = Dhr01::Cli::Config.new
          end

          def execute(input: $stdin, output: $stdout)
            @firmware = Dhr01::Cli::Firmware.new(config: @config)
            @firmware.get_version
          end
        end
      end
    end
  end
end
