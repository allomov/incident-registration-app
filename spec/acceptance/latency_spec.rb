require_relative '../spec_helper'

describe 'Latency' do
  describe 'GET /' do
    before do
      get '/', with_latency: true
    end

    it 'should be less than 3 seconds' do
      latency.should be < 3.seconds
    end

  end
end