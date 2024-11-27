class Position < ApplicationRecord
  belongs_to :department
  has_many :employees
  validates :name, :description, :department, :level, :base_salary, :requirements, :benefits, :status, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["department_id"]
  end
end
