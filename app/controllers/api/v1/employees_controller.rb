module Api
    module V1
        class EmployeesController < ApplicationController
            before_action :authenticate_user!, :only => [:index, :create, :show, :update]

            def index
                @employees = Employee.all
                @employees.each do |employee|
                    @skills =  Skill.joins(:employees)
                    employee.skills = @skills
                end
                render json: @employees.as_json(include: :skills)
            end
            def create
                @employee = Employee.create(key:params[:key], name:params[:name], age:params[:age], job:params[:job], adress:params[:adress], skill_ids:params[:skill_ids])
                if @employee.save
                    render status: :created
                else
                  render json: @employee.errors, status: :unprocessable_entity
                end
            end
            def show
                @employee = Employee.find(params[:id])
                if @employee
                    @skills =  Skill.joins(:employees)
                    @employee.skills = @skills
                end
                render json: @employee.as_json(include: :skills)

            end
            def update
                @employee = Employee.find(params[:id])
                if @employee.update_attributes(key:params[:key], name:params[:name], age:params[:age], job:params[:job], adress:params[:adress], skill_ids:params[:skill_ids])
                    #render status: :updated
                else
                    render json: @skill.errors, status: :unprocessable_entity
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
        end
    end
end

