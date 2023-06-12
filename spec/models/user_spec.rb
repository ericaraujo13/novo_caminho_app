require 'rails_helper'

RSpec.describe User, type: :model do
  subject { user }
  let(:user) { User.new(name: 'John Doe') }

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:password_confirmation) }
    it { is_expected.to validate_presence_of(:email) }
  end
end
