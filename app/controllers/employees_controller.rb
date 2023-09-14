class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update, :destroy]
    def index
        @employees= Employee.all
    end

    def show
    end

    def new
        @employee= Employee.new
    end

    def create
        @employee= Employee.new(employee_params)
        if @employee.save
            redirect_to @employee, notice: "Employee was Successfully Created."
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @employee.update(employee_params)
            redirect_to @employee, notice: "Employee was Successfully Updated."
        else
            render :edit
        end
    end

    def destroy
        @employee.destroy
        redirect_to employee_url, notice: "Employee was Successfully Destroyed."
    end

    private

    def set_employee
        @employee= Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:name,:email,:designation_id,:role)
    end
end
