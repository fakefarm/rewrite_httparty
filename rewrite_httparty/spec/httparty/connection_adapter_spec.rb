require "spec_helper"

RSpec.describe HTTParty::ConnectionAdapter do
  describe 'initialization' do
    let(:uri) { URI 'http://www.google.com' }
    it 'takes a URI as input' do
      HTTParty::ConnectionAdapter.new(uri)
    end

    it 'raises an ArgumentError if the uri is nil' do
      expect { RewrteHttparty::ConnectionAdapter.new(nil) }
    end
  end
end
