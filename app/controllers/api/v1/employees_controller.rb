module Api
    module V1
        class EmployeesController < ApplicationController
            def index
                @employees = Employee.all
                render json: @employees
            end
            def create
                @employee = Employee.new(employee_params)
                if @employee.save
                  render status: :created
                else
                  render json: @employee.errors, status: :unprocessable_entity
                end
            end
            def show
                @employee = Employee.find(params[:id])
                render json: @employee
            end
            def update
                @employee = Employee.find(params[:id])
                if @employee.update_attributes(employee_params)
                    #render status: :updated
                else
                    #render json: @skill.errors, status: :unprocessable_entity
                end
            end
            def destroy
                @employee = Employee.find(params[:id])
                if @employee
                  @employee.delete
                else
                  render json: {post: "not found"}, status: :not_found
                end
            end
            private
            def employee_params
                params.require(:employee).permit(:id_employee, :name, :age, :job, :adress)
            end
        end
    end
end