# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'citizens/new', type: :view do
  before(:each) do
    assign(:citizen, Citizen.new(
                       name: 'MyString',
                       cpf: 'MyString',
                       cns: 'MyString',
                       email: 'MyString',
                       phone: 'MyString',
                       status: 1
                     ))
  end

  it 'renders new citizen form' do
    render

    assert_select 'form[action=?][method=?]', citizens_path, 'post' do
      assert_select 'input[name=?]', 'citizen[name]'

      assert_select 'input[name=?]', 'citizen[cpf]'

      assert_select 'input[name=?]', 'citizen[cns]'

      assert_select 'input[name=?]', 'citizen[email]'

      assert_select 'input[name=?]', 'citizen[phone]'

      assert_select 'input[name=?]', 'citizen[status]'
    end
  end
end
