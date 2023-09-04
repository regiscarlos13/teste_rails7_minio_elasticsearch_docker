# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'citizens/show', type: :view do
  let(:citizen) { create(:citizen) }

  before { assign :citizen, citizen }
  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(translate('activerecord.attributes.citizen.name'))
    expect(rendered).to match(translate('activerecord.attributes.citizen.cpf'))
    expect(rendered).to match(translate('activerecord.attributes.citizen.cns'))
    expect(rendered).to match(translate('activerecord.attributes.citizen.email'))
    expect(rendered).to match(translate('activerecord.attributes.citizen.phone'))
    expect(rendered).to match(translate('activerecord.attributes.citizen.status'))
  end
end
