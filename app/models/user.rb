class User < ApplicationRecord
  has_and_belongs_to_many :departments

  validate :validate_departments_to_gestor

  before_validation :set_admin_if_first_user
  before_validation :assign_all_departments_if_admin

  after_create :send_welcome_email, if: :password_generated?

  after_initialize :set_changed_password, if: :new_record?

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  attr_accessor :generated_password

  def admin?
    self.acess == "admin"
  end

  def gestor?
    self.acess == "gestor"
  end

  private

  def set_changed_password
    self.password_changed ||= false
  end

  def set_admin_if_first_user
    self.acess = "admin" if User.count == 0
  end

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end

  def password_generated?
    self.password.present?
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
