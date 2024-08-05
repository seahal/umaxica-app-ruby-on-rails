# frozen_string_literal: true

class StudyIrreversibleMigration < ActiveRecord::Migration[7.1]
  def up
    say 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', true
  end

  def down
    say 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', true
    raise ActiveRecord::IrreversibleMigration
  end
end
