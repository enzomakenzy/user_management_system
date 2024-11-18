class User < ApplicationRecord
  has_and_belongs_to_many :departments

  validate :validate_departments_to_gestor

  before_validation :set_admin_if_first_user
  before_validation :assign_all_departments_if_admin

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  def admin?
    self.acess == "admin"
  end

  def gestor?
    self.acess == "gestor"
  end

  private

  def set_admin_if_first_user
    self.acess = "admin" if User.count == 0
  end

  def assign_all_departments_if_admin 
    if acess == "admin"
      self.departments = Department.all
    end
  end

  def validate_departments_to_gestor
    if acess == "gestor" && departments.empty?
      errors.add(:department, "Gestores devem ter pelo menos um departamento cadastrado")
    end
  end
end
