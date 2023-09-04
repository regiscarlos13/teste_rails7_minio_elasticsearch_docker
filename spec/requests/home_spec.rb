# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes', type: :routing do
  describe 'routes' do
    it "routes '/' to the index action of the pages controller" do
      expect(get: '/').to route_to(controller: 'home', action: 'index')
    end
  end
end
