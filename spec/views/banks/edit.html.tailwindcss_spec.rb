require 'rails_helper'

RSpec.describe "banks/edit", type: :view do
  let(:bank) {
    Bank.create!(
      title: "MyString",
      type: "",
      amount: "MyString"
    )
  }

  before(:each) do
    assign(:bank, bank)
  end

  it "renders the edit bank form" do
    render

    assert_select "form[action=?][method=?]", bank_path(bank), "post" do

      assert_select "input[name=?]", "bank[title]"

      assert_select "input[name=?]", "bank[type]"

      assert_select "input[name=?]", "bank[amount]"
    end
  end
end
