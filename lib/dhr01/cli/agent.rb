require "selenium-webdriver"
require "dhr01/cli/config"

module Dhr01
  module Cli
    class Agent
      def initialize(options={})
        @config = options[:config]
        @output = options[:output] || $stdout
        browser_options = Selenium::WebDriver::Firefox::Options.new
        @driver = Selenium::WebDriver.for :firefox, options: browser_options
        @wait = Selenium::WebDriver::Wait.new(:timeout => 20)
      end

      def login
        url = "http://#{@config.login_name}:#{@config.login_password}@#{@config.router_ip}/home.htm"
        @output.puts("login router setting url: <#{url}>")
        @driver.navigate.to(url)
        @wait.until do
          @driver.find_element(:name => "menu").displayed?
        end
      end

      def switch_to_frame(name)
        @frame = @driver.find_element(:name, name)
        @driver.switch_to.frame(@frame)
      end
    end
  end
end
