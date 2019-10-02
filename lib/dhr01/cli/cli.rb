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

      desc 'firmware [VERSION]', 'Command description...'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def firmware(version=nil)
        if options[:help]
          invoke :help, ['firmware']
        else
          require_relative 'commands/firmware'
          Dhr01::Cli::Commands::Firmware.new(version, options).execute
        end
      end

      require_relative 'commands/firmware'
      register Dhr01::Cli::Commands::Firmware, 'firmware', 'firmware [SUBCOMMAND]', 'Command description...'

      desc 'reboot', 'Command description...'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def reboot(*)
        if options[:help]
          invoke :help, ['reboot']
        else
          require_relative 'commands/reboot'
          Dhr01::Cli::Commands::Reboot.new(options).execute
        end
      end
    end
  end
end
