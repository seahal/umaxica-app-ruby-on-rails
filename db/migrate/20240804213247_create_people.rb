# frozen_string_literal: true

class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
