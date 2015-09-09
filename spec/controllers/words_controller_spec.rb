require 'rails_helper'

RSpec.describe WordsController, type: :controller do

	it "#index" do
    get :index
    response.status.should eql(200)
  end

end
