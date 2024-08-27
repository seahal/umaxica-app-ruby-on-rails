# frozen_string_literal: true

class CreateAccounts < ActiveRecord::Migration[7.2]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')

    create_table :accounts, id: false do |t|
      t.uuid :id, default: SecureRandom.uuid_v7 # FIXME: 本当は DB の関数から uuid を作成したい
      t.string :type
      t.timestamps
    end
  end
end
