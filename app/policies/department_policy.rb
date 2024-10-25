class DepartmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.joins(:users).where(users: { id: user.id })
      end
    end
  end

  def index? 
    true
  end

  def show? 
    user.admin? || user_are_associated_with_department?
  end

  def new? 
    user.admin?
  end

  def create?  
    user.admin?
  end

  def update?
    user.admin? || user_are_associated_with_department?
  end

  def destroy?
    user.admin? || user_are_associated_with_department?
  end

  private 

  def user_are_associated_with_department?
    user.gestor? && user.departments.include?(record)
  end
end
