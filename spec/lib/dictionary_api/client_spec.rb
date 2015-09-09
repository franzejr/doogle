require 'rails_helper'

RSpec.describe Dictionary do
	include Dictionary

  describe 'definitions' do
		xit "should return definitions objects" do
			expect(Dictionary::Word.new("Home").definitions.first.class).to eq "Definition"
			expect(Dictionary::Word.new("Home").definitions.size).to eq 29
		end
	end
end