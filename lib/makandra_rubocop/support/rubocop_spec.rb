require 'open3'

RSpec.describe 'rubocop' do
  it 'should not be offended' do
    command = self.class.description
    stdout, stderr, status = Open3.capture3('bundle', 'exec', command)
    output = (stderr.size > 0) ? stderr : stdout

    expect(status.success?).to eq(true), output
  end
end
