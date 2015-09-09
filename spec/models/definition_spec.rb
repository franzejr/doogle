require 'rails_helper'

RSpec.describe Definition, type: :model do
  describe 'validations' do
		it { is_expected.to validate_presence_of(:name) }
		it { is_expected.to belong_to(:word) }
	end
end