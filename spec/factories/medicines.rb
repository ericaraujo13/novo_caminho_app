# frozen_string_literal: true

FactoryBot.define do
  factory :medicine do
    name { FFaker::Internet.user_name }
    quantity { rand(0..100) }
  end
end
