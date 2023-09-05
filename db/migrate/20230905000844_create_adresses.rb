# frozen_string_literal: true

class CreateAdresses < ActiveRecord::Migration[7.0]
  def change
    create_table :adresses, id: :uuid do |t|
      t.references :citizen, null: false, foreign_key: true, type: :uuid
      t.string :cep, null: false
      t.string :street, null: false
      t.string :complement
      t.string :neighborhood, null: false
      t.string :city, null: false
      t.string :uf, null: false
      t.string :code_ibge

      t.timestamps
    end
  end
end
