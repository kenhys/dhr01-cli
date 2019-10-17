require "selenium-webdriver"
require "dhr01/cli/config"
require "dhr01/cli/agent"

module Dhr01
  module Cli
    class Firmware < Dhr01::Cli::Agent
      def initialize(options={})
        super(options)
        login
      end

      def check_version
        switch_to_frame("menu")
        @wait.until do
          @driver.find_element(:id => "mtmtable").displayed?
        end
        @driver.find_elements(:id => "mtmtable").each do |mtmtable|
          mtmtable.find_elements(:xpath => "//tr[6]/td/a").each do |a|
            a.click
          end
        end
        @driver.switch_to.default_content
        switch_to_frame("view")
        @driver.find_elements(:xpath => "//table[2]").each do |table|
          table.find_elements(:xpath => "//td[2]").each do |td|
            @output.puts(td.text.chomp)
          end
        end
      end
    end
  end
end
