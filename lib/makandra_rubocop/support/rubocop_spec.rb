require 'open3'

RSpec.describe 'rubocop' do
  it 'should not be offended' do
    command = self.class.description
    stdout, stderr, status = Open3.capture3('bundle', 'exec', command, '--format', 'simple')
    failure_message = [stderr, stdout].reject(&:empty?).join("\n\n")

    expect(status.success?).to eq(true), failure_message
  end
end
