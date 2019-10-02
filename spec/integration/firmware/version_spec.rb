RSpec.describe "`dhr01-cli firmware version` command", type: :cli do
  it "executes `dhr01-cli firmware help version` command successfully" do
    output = `dhr01-cli firmware help version`
    expected_output = <<-OUT
Usage:
  dhr01-cli version

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
