RSpec.describe "`dhr01-cli firmware` command", type: :cli do
  it "executes `dhr01-cli help firmware` command successfully" do
    output = `dhr01-cli help firmware`
    expected_output = <<-OUT
Usage:
  dhr01-cli firmware [VERSION]

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
