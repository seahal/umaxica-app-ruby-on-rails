# frozen_string_literal: true

class CreateTerms < ActiveRecord::Migration[8.1]
  def change
    create_table :terms do |t|
      t.string :title
      t.text :body
      t.uuid :staff_id

      t.timestamps
    end
  end
end
