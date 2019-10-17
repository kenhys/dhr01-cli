module Dhr01
  module Cli
    class Config
      attr :router_ip, true
      attr :login_name, true
      attr :login_password, true
      def initialize(options={})
        @router_ip = "192.168.10.1"
      end
    end
  end
end
