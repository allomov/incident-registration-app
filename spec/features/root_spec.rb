require_relative '../spec_helper'

describe 'Root Path' do
  describe 'GET /' do
    before { get '/' }

    it 'is successful' do
      expect(last_response.status).to eq 200
    end

    it 'is has background' do
      expect(last_response.status).to eq 200
    end

    it 'is good looking' do
      expect(last_response.status).to eq 200
    end

    it 'has some number on the page' do
      expect(last_response.status).to eq 200
    end

  end
end