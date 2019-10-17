module Dhr01
  module Cli
    class Config
      attr :router_ip, true
      def initialize(options={})
        @router_ip = "192.168.10.1"
      end
    end
  end
end
