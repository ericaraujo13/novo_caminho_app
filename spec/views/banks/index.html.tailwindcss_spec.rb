require 'rails_helper'

RSpec.describe "banks/index", type: :view do
  before(:each) do
    assign(:banks, [
      Bank.create!(
        title: "Title",
        type: "Type",
        amount: "Amount"
      ),
      Bank.create!(
        title: "Title",
        type: "Type",
        amount: "Amount"
      )
    ])
  end

  it "renders a list of banks" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Amount".to_s), count: 2
  end
end
