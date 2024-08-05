# frozen_string_literal: true

class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.string :content
      t.boolean :complete

      t.timestamps
    end
  end
end
