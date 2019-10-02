RSpec.describe "`dhr01-cli reboot` command", type: :cli do
  it "executes `dhr01-cli help reboot` command successfully" do
    output = `dhr01-cli help reboot`
    expected_output = <<-OUT
Usage:
  dhr01-cli reboot

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
