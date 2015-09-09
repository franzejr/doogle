require 'rails_helper'

RSpec.describe WordsController, type: :controller do

	it "#index" do
    get :index
    expect(response).to be_success
  end

  it "#show" do
    get(:show, {name: "World"})
    expect(response).to be_success
  end

  xit "If the word is not in the database, it should persist" do

  end

  xit "If the word not in the database, it should not persist" do

  end

end
