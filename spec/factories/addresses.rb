# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    citizen { create(:citizen) }
    cep { Faker::PhoneNumber.subscriber_number(length: 8) }
    street { Faker::Address.street_address }
    complement { Faker::Address.secondary_address }
    neighborhood { Faker::Address.community }
    city { Faker::Address.city }
    uf { Faker::Address.state_abbr }
    code_ibge { Faker::PhoneNumber.subscriber_number(length: 8) }
  end
end
