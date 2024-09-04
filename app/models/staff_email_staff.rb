class StaffEmailStaff < ApplicationRecord
  belongs_to :email, foreign_key: true
  belongs_to :staff, foreign_key: true
end
