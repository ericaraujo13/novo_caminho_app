# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Animal, type: :model do
  subject { build(:animal) }

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to define_enum_for(:gender).with_values({ fêmea: 1, macho: 0 }) }
    it { is_expected.to define_enum_for(:sick).with_values({ doente: 0, saudavel: 1 }) }
    it { is_expected.to validate_presence_of(:race) }
  end
end
