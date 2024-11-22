class Department < ApplicationRecord
  has_many :positions
  has_and_belongs_to_many :users
  after_create :assign_to_admins
  validates :name, :description, :code, :adress, :status, presence: true

  private 

  def assign_to_admins 
    User.where(acess: "admin").each do |admin|
      admin.departments << self unless admin.departments.include?(self)
    end
  end
end
