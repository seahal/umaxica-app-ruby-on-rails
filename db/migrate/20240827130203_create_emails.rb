# frozen_string_literal: true

PARTITION_SIZE = 15

class CreateEmails < ActiveRecord::Migration[7.2]
  def up
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')

    execute <<-SQL
                CREATE TABLE emails(
                    id uuid NOT NULL primary key,
                    type varchar not null,
                    created_at timestamp(6) not null,
                    updated_at timestamp(6) not null
                ) PARTITION BY HASH (id);

                alter table emails
                    owner to "default";
    SQL

    # FIXME: I'm not quite sure if this size is appropriate.
    (0..PARTITION_SIZE).each do |i|
      execute <<-SQL
        CREATE TABLE emails_p#{format('%02x', i)} PARTITION OF emails FOR VALUES WITH (MODULUS #{PARTITION_SIZE + 1}, REMAINDER #{i});
      SQL
    end
  end

  def down
    execute <<-SQL
        DROP TABLE emails;
    SQL

    disabl_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  end
end
