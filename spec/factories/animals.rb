# frozen_string_literal: true

FactoryBot.define do
  factory :animal do
    name { FFaker::NameBR.name }
    race { FFaker::AnimalBR.common_name }
    description { FFaker::LoremBR.words }
    gender { %i[macho fêmea].sample }
    adoption { %i[disponível adotado].sample }
    sick { %i[doente saudavel].sample }
  end
end
