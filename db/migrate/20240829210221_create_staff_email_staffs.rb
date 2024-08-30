class CreateStaffEmailStaffs < ActiveRecord::Migration[7.2]
  def change
    # FIXME: need hashed partition.
    create_table :staff_email_staffs, id: false, force: :cascade do |t|
      t.belongs_to :staff, null: false, foreign_key: true, type: :uuid

      # FIXME I want to use column type=staff
      t.belongs_to :email, null: false, foreign_key: true, type: :uuid

      # need index. this is because i do not want to set id.
      t.index [ "staff_id" ], name: "index_staff_email_staffs_staff_id"
      t.index [ "email_id" ], name: "index_staff_email_staffs_email_id", unique: true
    end
  end
end
