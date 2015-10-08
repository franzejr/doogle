require 'rails_helper'

RSpec.describe WordsController do
  it '#index' do
    get :index
    expect(response).to be_success
  end

  describe 'GET show' do
    context 'word exists in local database' do
      before do
        Word.create(name: 'Home', definitions: [Definition.create(name: ':house')])
      end

      it 'renders JSON with word definitions' do
        get :show, name: 'Home'

        expect(JSON.parse(response.body)).to eq('name' => 'Home',
                                                'definitions' => [{ 'name' => ':house' }])
      end

      it 'does not import from API' do
        expect(DictionaryApi::Word).to_not receive(:new)
        get :show, name: 'Home'
      end
    end

    context 'word does not exist in local database' do
      before do
        allow(DictionaryApi::Word).to receive(:new)
          .and_return(double(definitions: [':house', ":one's place of residence :domicile"]))
      end

      it 'imports word from Dictionary API and renders JSON response' do
        expect do
          get :show, name: 'Home'
        end.to change { Word.count }.from(0).to(1)

        expect(JSON.parse(response.body)).to eq('name' => 'Home',
                                                'definitions' => [
                                                  { 'name' => ':house' },
                                                  { 'name' => ":one's place of residence :domicile" }
                                                ])
      end
    end
  end
end
