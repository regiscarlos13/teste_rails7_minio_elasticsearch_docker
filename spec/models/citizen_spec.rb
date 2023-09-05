# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Citizen, type: :model do
  subject(:citizen) { create(:citizen) }

  let(:address_attributes) { attributes_for(:address) }

  context 'with migrations' do
    it { is_expected.to have_db_column(:id).of_type(:uuid) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:cpf).of_type(:string) }
    it { is_expected.to have_db_column(:cns).of_type(:string) }
    it { is_expected.to have_db_column(:email).of_type(:string) }
    it { is_expected.to have_db_column(:birth_date).of_type(:date) }
    it { is_expected.to have_db_column(:phone).of_type(:string) }
    it { is_expected.to have_db_column(:status).of_type(:integer) }

    include_examples 'Timestamps presence'
  end

  context 'with respond to all attributes' do
    it { is_expected.to respond_to(:id) }
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:cpf) }
    it { is_expected.to respond_to(:cns) }
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:birth_date) }
    it { is_expected.to respond_to(:phone) }
    it { is_expected.to respond_to(:status) }
  end

  context 'with validations' do
    it { is_expected.to have_one(:address) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_presence_of(:cns) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:birth_date) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:status) }
  end

  context 'with enums' do
    it do
      expect(citizen).to define_enum_for(:status)
        .with_values(active: 0, inactive: 1)
        .with_prefix(:currently)
    end
  end
end
