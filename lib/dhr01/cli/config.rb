module Dhr01
  module Cli
    class Config
      attr :router_ip, true
      attr :login_name, true
      attr :login_password, true
      def initialize(options={})
        @router_ip = "192.168.10.1"
        @login_name = ENV["DHR01_LOGIN_NAME"] || "admin"
        @login_password = ENV["DHR01_LOGIN_PASSWORD"] || "password"
      end
    end
  end
end
