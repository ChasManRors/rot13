require 'spec_helper'
require_relative '../rot13'

describe 'rot13' do
  context "I don't know what to put here" do
    it 'returns expected rot13 sequence' do
      expect(rot13('test')).to eq('grfg')
      expect(rot13('Test')).to eq('Grfg')
      expect(rot13('T8st')).to eq('G8fg')
    end
  end
end
