require 'rails_helper'

RSpec.describe "medicines/new", type: :view do
  before(:each) do
    assign(:medicine, Medicine.new(
      name: "MyString",
      quantity: "MyString"
    ))
  end

  it "renders new medicine form" do
    render

    assert_select "form[action=?][method=?]", medicines_path, "post" do

      assert_select "input[name=?]", "medicine[name]"

      assert_select "input[name=?]", "medicine[quantity]"
    end
  end
end
