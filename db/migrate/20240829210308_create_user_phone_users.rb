# frozen_string_literal: true

class CreateUserPhoneUsers < ActiveRecord::Migration[7.2]
  #   def change
  #     # FIXME: need hashed partition.
  #     create_table :user_phone_users, id: false, force: :cascade do |t|
  #       t.references :user, null: false, foreign_key: true, type: :uuid, index: false
  #
  #       # FIXME I want to use column type=user
  #       t.references :phone, null: false, foreign_key: true, type: :uuid, index: false
  #
  #       # Need index. this is because i do not want to set id.
  #       t.index [ "user_id" ], name: "index_user_phone_users_user_id"
  #       t.index [ "phone_id" ], name: "index_user_phone_users_phone_id", unique: true
  #     end
  #   end
end
