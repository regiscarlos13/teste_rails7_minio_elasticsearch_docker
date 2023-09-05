# frozen_string_literal: true

FactoryBot.define do
  factory :adress do
    citizen { nil }
    cep { 'MyString' }
    street { 'MyString' }
    complement { 'MyString' }
    neighborhood { 'MyString' }
    city { 'MyString' }
    uf { 'MyString' }
    code_ibge { 'MyString' }
  end
end
