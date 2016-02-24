require_relative '../spec_helper'

describe 'Web UI' do
  describe 'GET /' do
    before { get '/' }

    it 'should contain proper text' do
      expect(last_response.body).to(include("без происшествий"))
    end

    it 'days should be a number' do
      expect(last_response.body).to have_tag('.days', :text => /\d+/i)
    end

  end
end