# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Address, type: :model do
  subject(:address) { create(:address) }

  context 'with migrations' do
    it { is_expected.to have_db_column(:id).of_type(:uuid) }
    it { is_expected.to have_db_column(:citizen_id).of_type(:uuid) }
    it { is_expected.to have_db_column(:cep).of_type(:string) }
    it { is_expected.to have_db_column(:street).of_type(:string) }
    it { is_expected.to have_db_column(:complement).of_type(:string) }
    it { is_expected.to have_db_column(:neighborhood).of_type(:string) }
    it { is_expected.to have_db_column(:city).of_type(:string) }
    it { is_expected.to have_db_column(:uf).of_type(:string) }
    it { is_expected.to have_db_column(:code_ibge).of_type(:string) }

    include_examples 'Timestamps presence'
  end

  context 'with respond to all attributes' do
    it { is_expected.to respond_to(:id) }
    it { is_expected.to respond_to(:citizen_id) }
    it { is_expected.to respond_to(:cep) }
    it { is_expected.to respond_to(:street) }
    it { is_expected.to respond_to(:complement) }
    it { is_expected.to respond_to(:neighborhood) }
    it { is_expected.to respond_to(:city) }
    it { is_expected.to respond_to(:uf) }
    it { is_expected.to respond_to(:code_ibge) }
  end

  context 'with validations' do
    it { is_expected.to belong_to(:citizen) }
    it { is_expected.to validate_presence_of(:street) }
    it { is_expected.to validate_presence_of(:cep) }
    it { is_expected.to validate_presence_of(:street) }
    it { is_expected.to validate_presence_of(:neighborhood) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:uf) }
  end
end
