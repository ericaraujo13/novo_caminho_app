require 'rails_helper'

RSpec.describe "banks/show", type: :view do
  before(:each) do
    assign(:bank, Bank.create!(
      title: "Title",
      type: "Type",
      amount: "Amount"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Amount/)
  end
end
