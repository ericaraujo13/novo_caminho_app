require 'rails_helper'

RSpec.describe "medicines/show", type: :view do
  before(:each) do
    assign(:medicine, Medicine.create!(
      name: "Name",
      quantity: "Quantity"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Quantity/)
  end
end
