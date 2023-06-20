# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    street { FFaker::AddressBR.street }
    number { FFaker::AddressBR.building_number }
    city { FFaker::AddressBR.city }
  end
end
