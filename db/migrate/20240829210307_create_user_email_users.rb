class CreateUserEmailUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :user_email_users, id: false, force: :cascade do |t|
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid

      # FIXME I want to use column type=user
      t.belongs_to :email, null: false, foreign_key: true, type: :uuid


      # need index. this is because i do not want to set id.
      t.index ["user_id"], name: "index_user_email_users_user_id"
      t.index ["email_id"], name: "index_user_email_users_email_id"
    end
  end
end
