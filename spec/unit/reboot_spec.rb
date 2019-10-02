require 'dhr01/cli/commands/reboot'

RSpec.describe Dhr01::Cli::Commands::Reboot do
  it "executes `reboot` command successfully" do
    output = StringIO.new
    options = {}
    command = Dhr01::Cli::Commands::Reboot.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
