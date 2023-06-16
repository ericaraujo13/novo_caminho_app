require 'rails_helper'

RSpec.describe "Animal", type: :request do
  let(:user) { create(:user) }

  context "GET /animals" do
    let(:url) { "/animals" }
    let!(:animals) { create_list(:animal, 10) }

    it "lists animals" do
      get url
      expect(animals.count).to eq(10)
    end

    it 'renders a successful response' do
      get url
      expect(response).to be_successful
    end
  end
end
