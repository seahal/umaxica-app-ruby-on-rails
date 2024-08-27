# frozen_string_literal: true

PARTITION_SIZE = 255

class CreateAccounts < ActiveRecord::Migration[7.2]
  # def change

  #   create_table :accounts, id: false do |t|
  #     t.uuid :id, default: SecureRandom.uuid_v7 # FIXME: 本当は DB の関数から uuid を作成したい
  #     t.string :type
  #     t.timestamps
  #   end
  # end

  def up
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')

    execute <<-SQL
                CREATE TABLE accounts(
                    id uuid NOT NULL DEFAULT NULL primary key,
                    type varchar not null,
                    created_at timestamp(6) not null,
                    updated_at timestamp(6) not null
                ) PARTITION BY HASH (id);

                alter table accounts
                    owner to "default";
    SQL

    # FIXME: I'm not quite sure if this size is appropriate.
    (0..PARTITION_SIZE).each do |i|
      execute <<-SQL
        CREATE TABLE accounts_p#{format('%02x', i)} PARTITION OF accounts FOR VALUES WITH (MODULUS #{PARTITION_SIZE + 1}, REMAINDER #{i});
      SQL
    end
  end

  def down
    execute <<-SQL
        DROP TABLE accounts;
    SQL

    disabl_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  end
end
