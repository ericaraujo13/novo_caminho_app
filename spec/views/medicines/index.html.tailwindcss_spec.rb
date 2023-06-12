require 'rails_helper'

RSpec.describe "medicines/index", type: :view do
  before(:each) do
    assign(:medicines, [
      Medicine.create!(
        name: "Name",
        quantity: "Quantity"
      ),
      Medicine.create!(
        name: "Name",
        quantity: "Quantity"
      )
    ])
  end

  it "renders a list of medicines" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Quantity".to_s), count: 2
  end
end
