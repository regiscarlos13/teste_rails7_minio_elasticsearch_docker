# frozen_string_literal: true

class Citizen < ApplicationRecord
  ATTRIBUTE_PRESENCE = %i[name cpf cns email birth_date phone status].freeze
  validates_presence_of ATTRIBUTE_PRESENCE

  validates_uniqueness_of :cpf

  has_one :address, dependent: :destroy
  has_one_attached :photograph
  accepts_nested_attributes_for :address, allow_destroy: true
  validates_cpf_format_of :cpf
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_save :remove_caracteres
  after_commit :reindex
  searchkick

  enum status: {
    active: 0,
    inactive: 1
  }, _prefix: :currently

  def remove_caracteres
    self.cpf = cpf.gsub(/\W/, '')
  end
end
