# frozen_string_literal: true

class AddColumnEmails < ActiveRecord::Migration[7.2]
  def change
    # FIXME: You need hashed partition.
    change_table :emails, bulk: true do |t|
      t.datetime :expires_in, default: Time.now + 1.hour

      ## Confirmable
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      #   t.string :unconfirmed_email # Only if using reconfirmable

      # ## Trackable
      t.integer :sign_in_count, default: 0, null: false, scale: 1
      t.datetime :current_sign_in_at, default: nil
      t.datetime :last_sign_in_at, default: nil
      t.cidr :current_sign_in_ip, default: nil
      t.cidr :last_sign_in_ip

      ## Recoverable
      t.string :reset_password_token, limit: 255, default: nil
      t.string :reset_password_sent_at, limit: 255, default: nil

      ## Lockable
      t.integer :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at
    end

    add_index :emails, :expires_in
    change_column_default :emails, :id, from: nil, to: 'gen_random_uuid()' # TODO: change to uuid v7
  end
end
