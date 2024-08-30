class StaffEmailStaff < ApplicationRecord
  belongs_to :email
  belongs_to :staff
end
