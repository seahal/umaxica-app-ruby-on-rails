# frozen_string_literal: true

class CreateAccessAuditTrails < ActiveRecord::Migration[8.0]
  def change
    create_table :access_audit_trails do |t|
      t.uuid :user_id
      t.text :description

      t.timestamps
    end
  end
end
