# frozen_string_literal: true

class CitizensController < ApplicationController
  before_action :set_citizen, only: %i[show edit update destroy]

  def index
    @citizens = Citizen.all
  end

  def show; end

  def new
    @citizen = Citizen.new
    @citizen.build_address
  end

  def edit; end

  def create
    @citizen = Citizen.new(citizen_params)

    respond_to do |format|
      if @citizen.save
        format.html { redirect_to citizen_url(@citizen), notice: 'O registro foi criado com sucesso.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @citizen.update(citizen_params)
        format.html { redirect_to citizen_url(@citizen), notice: 'O registro foi atualizado com sucesso.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @citizen.destroy

    respond_to do |format|
      format.html { redirect_to citizens_url, notice: 'O registro foi removido com sucesso.' }
    end
  end

  private

  def set_citizen
    @citizen = Citizen.find(params[:id])
  end

  def citizen_params
    attributes_address = %I[id cep street complement neighborhood city uf code_ibge].freeze
    attributes_citizen = %I[name cpf cns email birth_date phone status photograph].freeze

    params.require(:citizen).permit(attributes_citizen, address_attributes: [attributes_address])
  end
end
