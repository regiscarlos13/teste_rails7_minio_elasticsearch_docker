# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'citizens/index', type: :view do
  let(:citizen) { create_list(:citizen, 2) }

  before { assign :citizen, citizen }

  it 'renders a list of citizens' do
    # render
    # assert_select "tr#permission_1 td", "test user01"
    # assert_select "tr#permission_1 td", "Reading permission"
    # byebug

    'tr td'
    # assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    # assert_select cell_selector, text: Regexp.new('Cpf'.to_s), count: 2
    # assert_select cell_selector, text: Regexp.new('Cns'.to_s), count: 2
    # assert_select cell_selector, text: Regexp.new('Email'.to_s), count: 2
    # assert_select cell_selector, text: Regexp.new('Phone'.to_s), count: 2
    # assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
