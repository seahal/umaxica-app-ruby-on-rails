# frozen_string_literal: true

class AddColumnAccounts < ActiveRecord::Migration[7.2]
  def change
    change_table :accounts, bulk: true do |t|
      t.string :email, limit: 255, default: nil
      t.string :encrypted_password, limit: 255, default: nil

      ## Lockable
      t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable
    end

    # ## Recoverable
    # add_column :accounts, :reset_password_token, :string, limit: 255, default: nil
    # add_column :accounts, :reset_password_sent_at, :string, limit: 255, default: nil

    # ## Trackable
    # add_column :accounts, :sign_in_count, :integer, default: 0, null: false, scale: 1
    # add_column :accounts, :current_sign_in_at, :datetime, default: nil
    # add_column :accounts, :last_sign_in_at, :datetime, default: nil
    # add_column :accounts, :current_sign_in_ip, :string, default: nil
    # add_column :accounts, :last_sign_in_ip, :string


  end
end
