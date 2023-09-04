# frozen_string_literal: true

class Citizen < ApplicationRecord
  ATTRIBUTE_PRESENCE = %i[name cpf cns email birth_date phone status].freeze
  validates_presence_of ATTRIBUTE_PRESENCE

  enum status: {
    active: 0,
    inactive: 1
  }, _prefix: :currently
end
