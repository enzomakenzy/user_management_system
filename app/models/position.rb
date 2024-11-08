class Position < ApplicationRecord
  belongs_to :department
  has_many :employees

  def self.ransackable_attributes(auth_object = nil)
    ["base_salary", "benefits", "created_at", "department_id", "description", "id", "id_value", "level", "name", "requirements", "status", "updated_at"]
  end
end
