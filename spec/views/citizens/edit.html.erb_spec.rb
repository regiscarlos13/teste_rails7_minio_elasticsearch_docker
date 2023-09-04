# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'citizens/edit', type: :view do
  let(:citizen) { create(:citizen) }

  before(:each) do
    assign(:citizen, citizen)
  end

  it 'renders the edit citizen form' do
    render

    assert_select 'form[action=?][method=?]', citizen_path(citizen), 'post' do
      assert_select 'input[name=?]', 'citizen[name]'

      assert_select 'input[name=?]', 'citizen[cpf]'

      assert_select 'input[name=?]', 'citizen[cns]'

      assert_select 'input[name=?]', 'citizen[email]'

      assert_select 'input[name=?]', 'citizen[phone]'

      assert_select 'input[name=?]', 'citizen[status]'
    end
  end
end
