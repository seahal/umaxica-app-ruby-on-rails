class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users, id: :uuid do |t|
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      # t.cidr :current_sign_in_ip
      # t.cidr :last_sign_in_ip

      t.timestamps
    end
  end
end
