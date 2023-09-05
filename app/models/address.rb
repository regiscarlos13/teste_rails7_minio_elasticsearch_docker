# frozen_string_literal: true

class Address < ApplicationRecord
  ATTRIBUTE_PRESENCE = %i[street cep street neighborhood city uf].freeze
  validates_presence_of ATTRIBUTE_PRESENCE
  belongs_to :citizen

  before_save :remove_caracteres

  def remove_caracteres
    self.cep = cep.gsub(/\W/, '')
  end
end
