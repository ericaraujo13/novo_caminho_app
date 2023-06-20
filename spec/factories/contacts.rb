# frozen_string_literal: true

FactoryBot.define do
  factory :contact do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    cpf { FFaker::IdentificationBR.pretty_cpf }
    role { FFaker::JobBR.title }
    association :address, factory: :address
  end
end
