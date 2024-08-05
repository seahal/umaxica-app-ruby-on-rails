# frozen_string_literal: true

class CreateAvatars < ActiveRecord::Migration[7.2]
  def change
    create_table :avatars do |t|
      t.string :title

      t.timestamps
    end
  end
end
