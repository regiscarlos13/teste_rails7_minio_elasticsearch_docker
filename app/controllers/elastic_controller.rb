# frozen_string_literal: true

class ElasticController < ApplicationController
  def index
    search_field = params[:search].present? ? params[:search] : '*'
    @citizens = Citizen.search(search_field)
  end
end
