require 'rails_helper'

RSpec.describe "medicines/edit", type: :view do
  let(:medicine) {
    Medicine.create!(
      name: "MyString",
      quantity: "MyString"
    )
  }

  before(:each) do
    assign(:medicine, medicine)
  end

  it "renders the edit medicine form" do
    render

    assert_select "form[action=?][method=?]", medicine_path(medicine), "post" do

      assert_select "input[name=?]", "medicine[name]"

      assert_select "input[name=?]", "medicine[quantity]"
    end
  end
end
