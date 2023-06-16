# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Bank, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to define_enum_for(:category).with_values({ entrada: 1, saída: 2 }) }
  end
end
