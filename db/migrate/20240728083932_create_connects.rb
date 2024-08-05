# frozen_string_literal: true

class CreateConnects < ActiveRecord::Migration[7.1]
  def change
    create_table :connects do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
