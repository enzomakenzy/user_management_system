json.extract! employee, :id, :full_name, :birthday, :gender, :cpf, :rg, :phone, :email, :role, :contract_date, :salary, :status, :created_at, :updated_at
json.url employee_url(employee, format: :json)
