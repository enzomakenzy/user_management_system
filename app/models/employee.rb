class Employee < ApplicationRecord
  belongs_to :position
  validates :full_name, :birthday, :gender, :cpf, :phone, :rg, :email, :contract_date, :salary, :status, :adress, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["contract_date"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["position"]
  end
end
