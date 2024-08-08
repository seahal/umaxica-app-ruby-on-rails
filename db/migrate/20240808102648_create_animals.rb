# frozen_string_literal: true

class CreateAnimals < ActiveRecord::Migration[7.2]
  def change
    create_table :animals, id: :uuid do |t|
      t.string :full_name, default: '', null: false, limit: 200
      t.text :description, default: '', null: false, limit: 1_000
      t.boolean :extinct, default: false, null: false

      t.timestamps
    end
  end
end
