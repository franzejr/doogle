require 'rails_helper'

RSpec.describe Word, type: :model do
  describe 'validations' do
		it { should validate_presence_of(:name)}
		it { should have_many(:definitions) }
	end
end