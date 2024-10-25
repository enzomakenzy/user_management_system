require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Birthday", with: @employee.birthday
    fill_in "Contract date", with: @employee.contract_date
    fill_in "Cpf", with: @employee.cpf
    fill_in "Email", with: @employee.email
    fill_in "Full name", with: @employee.full_name
    fill_in "Gender", with: @employee.gender
    fill_in "Phone", with: @employee.phone
    fill_in "Rg", with: @employee.rg
    fill_in "Role", with: @employee.role
    fill_in "Salary", with: @employee.salary
    fill_in "Status", with: @employee.status
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Birthday", with: @employee.birthday
    fill_in "Contract date", with: @employee.contract_date
    fill_in "Cpf", with: @employee.cpf
    fill_in "Email", with: @employee.email
    fill_in "Full name", with: @employee.full_name
    fill_in "Gender", with: @employee.gender
    fill_in "Phone", with: @employee.phone
    fill_in "Rg", with: @employee.rg
    fill_in "Role", with: @employee.role
    fill_in "Salary", with: @employee.salary
    fill_in "Status", with: @employee.status
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
