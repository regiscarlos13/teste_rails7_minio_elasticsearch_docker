# frozen_string_literal: true

class CreateCitizens < ActiveRecord::Migration[7.0]
  def change
    create_table :citizens, id: :uuid do |t|
      t.string :name, null: false
      t.string :cpf, null: false
      t.string :cns, null: false
      t.string :email, null: false
      t.date :birth_date, null: false
      t.string :phone, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
