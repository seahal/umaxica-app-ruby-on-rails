# PARTITION_SIZE = 15
#
class CreatePhones < ActiveRecord::Migration[7.2]
  #   def up
  #     # I want to table emails as uniqueness of email address.
  #     execute <<-SQL
  #                 CREATE TABLE phones(
  #                     id uuid NOT NULL PRIMARY KEY,
  #                     number varchar(127) NOT NULL ,
  #                     type varchar not null,
  #                     created_at timestamp(6) not null,
  #                     updated_at timestamp(6) not null,
  #                     UNIQUE(id)
  #                 ) PARTITION BY HASH (id);
  #     SQL
  #
  #     add_index :phones, %i[id number], unique: true
  #
  #     # FIXME: I'm not quite sure if this size is appropriate.
  #     (0..PARTITION_SIZE).each do |i|
  #       execute <<-SQL
  #         CREATE TABLE phones_p#{format('%02x', i)} PARTITION OF phones FOR VALUES WITH (MODULUS #{PARTITION_SIZE + 1}, REMAINDER #{i});
  #       SQL
  #     end
  #   end
  #
  #   def down
  #     execute <<-SQL
  #         DROP TABLE phones;
  #     SQL
  #   end
end
