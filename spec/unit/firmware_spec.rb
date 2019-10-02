require 'dhr01/cli/commands/firmware'

RSpec.describe Dhr01::Cli::Commands::Firmware do
  it "executes `firmware` command successfully" do
    output = StringIO.new
    version = nil
    options = {}
    command = Dhr01::Cli::Commands::Firmware.new(version, options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
