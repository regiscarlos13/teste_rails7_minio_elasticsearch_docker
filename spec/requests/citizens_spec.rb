# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/citizens', type: :request do
  let(:valid_attributes) do
    build(:citizen).attributes
  end

  let(:invalid_attributes) do
    build(:citizen, name: nil).attributes
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Citizen.create! valid_attributes
      get citizens_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      citizen = Citizen.create! valid_attributes
      get citizen_url(citizen)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_citizen_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      citizen = Citizen.create! valid_attributes
      get edit_citizen_url(citizen)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Citizen' do
        expect do
          post citizens_url, params: { citizen: valid_attributes }
        end.to change(Citizen, :count).by(1)
      end

      it 'redirects to the created citizen' do
        post citizens_url, params: { citizen: valid_attributes }
        expect(response).to redirect_to(citizen_url(Citizen.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Citizen' do
        expect do
          post citizens_url, params: { citizen: invalid_attributes }
        end.to change(Citizen, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post citizens_url, params: { citizen: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        valid_attributes
      end

      it 'updates the requested citizen' do
        citizen = Citizen.create! valid_attributes
        patch citizen_url(citizen), params: { citizen: new_attributes }
        citizen.reload
        valid_attributes
      end

      it 'redirects to the citizen' do
        citizen = Citizen.create! valid_attributes
        patch citizen_url(citizen), params: { citizen: new_attributes }
        citizen.reload
        expect(response).to redirect_to(citizen_url(citizen))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        citizen = Citizen.create! valid_attributes
        patch citizen_url(citizen), params: { citizen: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
