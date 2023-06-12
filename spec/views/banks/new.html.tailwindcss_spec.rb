require 'rails_helper'

RSpec.describe "banks/new", type: :view do
  before(:each) do
    assign(:bank, Bank.new(
      title: "MyString",
      type: "",
      amount: "MyString"
    ))
  end

  it "renders new bank form" do
    render

    assert_select "form[action=?][method=?]", banks_path, "post" do

      assert_select "input[name=?]", "bank[title]"

      assert_select "input[name=?]", "bank[type]"

      assert_select "input[name=?]", "bank[amount]"
    end
  end
end
