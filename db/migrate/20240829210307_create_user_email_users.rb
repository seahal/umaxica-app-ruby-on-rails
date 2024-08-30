class CreateUserEmailUsers < ActiveRecord::Migration[7.2]
  def change
    # FIXME: need hashed partition.
    create_table :user_email_users, id: false, force: :cascade do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid, index: false

      # FIXME I want to use column type=user
      t.references :email, null: false, foreign_key: true, type: :uuid, index: false

      # Need index. this is because i do not want to set id.
      t.index [ "user_id" ], name: "index_user_email_users_user_id"
      t.index [ "email_id" ], name: "index_user_email_users_email_id", unique: true
    end
  end
end
