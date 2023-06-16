require 'rails_helper'

RSpec.describe Address, type: :model do
  describe "Validations" do
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:number) }
    it { is_expected.to validate_presence_of(:street) }
  end
end
