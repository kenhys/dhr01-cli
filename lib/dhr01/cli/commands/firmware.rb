# frozen_string_literal: true

require_relative '../command'
require "dhr01/cli/config"
require "dhr01/cli/firmware"

module Dhr01
  module Cli
    module Commands
      class Firmware < Thor

        namespace :firmware

        desc 'update', 'Command description...'
        method_option :help, aliases: '-h', type: :boolean,
                             desc: 'Display usage information'
        def update(*)
          if options[:help]
            invoke :help, ['update']
          else
            require_relative 'firmware/update'
            Dhr01::Cli::Commands::Firmware::Update.new(options).execute
          end
        end

        desc 'check', 'Command description...'
        method_option :help, aliases: '-h', type: :boolean,
                             desc: 'Display usage information'
        def check(*)
          if options[:help]
            invoke :help, ['check']
          else
            require_relative 'firmware/check'
            Dhr01::Cli::Commands::Firmware::Check.new(options).execute
          end
        end

        desc 'version', 'Command description...'
        method_option :help, aliases: '-h', type: :boolean,
                             desc: 'Display usage information'
        def version(*)
          if options[:help]
            invoke :help, ['version']
          else
            require_relative 'firmware/version'
            Dhr01::Cli::Commands::Firmware::Version.new(options).execute
          end
        end
      end
    end
  end
end
