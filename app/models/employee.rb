class Employee < ApplicationRecord
  belongs_to :position

  def self.ransackable_attributes(auth_object = nil)
    ["adress", "birthday", "contract_date", "cpf", "created_at", "email", "full_name", "gender", "id", "id_value", "phone", "position_id", "rg", "salary", "status", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["position"]
  end
end
