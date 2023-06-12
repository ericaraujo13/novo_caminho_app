require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    assign(:contact, Contact.create!(
      first_name: "First Name",
      last_name: "Last Name",
      cpf: "Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Cpf/)
  end
end
