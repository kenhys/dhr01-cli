require 'dhr01/cli/commands/firmware/version'

RSpec.describe Dhr01::Cli::Commands::Firmware::Version do
  it "executes `firmware version` command successfully" do
    output = StringIO.new
    options = {}
    command = Dhr01::Cli::Commands::Firmware::Version.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
