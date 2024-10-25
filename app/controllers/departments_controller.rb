class DepartmentsController < ApplicationController
  before_action :set_department, only: %i[ show edit update destroy ]
  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  # GET /departments or /departments.json
  def index
    @departments = policy_scope(Department)
  end

  # GET /departments/1 or /departments/1.json
  def show
    authorize @department
  end

  # GET /departments/new
  def new
    @department = Department.new
    authorize @department
  end

  # GET /departments/1/edit
  def edit
    authorize @department
  end

  # POST /departments or /departments.json
  def create
    @department = Department.new(department_params)
    authorize @department

    respond_to do |format|
      if @department.save
        format.html { redirect_to @department, notice: "Department was successfully created." }
        format.json { render :show, status: :created, location: @department }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departments/1 or /departments/1.json
  def update
    authorize @department
    respond_to do |format|
      if @department.update(department_params)
        format.html { redirect_to @department, notice: "Department was successfully updated." }
        format.json { render :show, status: :ok, location: @department }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1 or /departments/1.json
  def destroy
    authorize @department
    @department.destroy!

    respond_to do |format|
      format.html { redirect_to departments_path, status: :see_other, notice: "Department was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def department_params
      params.require(:department).permit(:name, :description, :code, :status, adress: [:street, :number, :complement, :neighborhood, :city, :state, :cep])
    end
end