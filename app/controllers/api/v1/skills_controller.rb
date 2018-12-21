module Api
    module V1
        class SkillsController < ApplicationController
            before_action :authenticate_user!, :only => [:index, :create, :show, :update, :edit]
            def index
                @skills = Skill.all
                render json: @skills
            end
            def create
                @skill = Skill.new(skill_params)
                if @skill.save
                  render status: :created
                else
                  render json: @skill.errors, status: :unprocessable_entity
                end
            end
            def show
                @skill = Skill.find(params[:id])
                render json: @skill
            end
            def update
                @skill = Skill.find(params[:id])
                if @skill.update_attributes(skill_params)
                    #render status: :updated
                else
                    #render json: @skill.errors, status: :unprocessable_entity
                end
            end
            def edit
                @skills = Skill.all(:joins => :assignments, :conditions => {:assignments => {:id_employee => params[:id]}})
                render json: @skills
            end
            private
            def skill_params
                params.require(:skill).permit(:name)
            end
        end
    end
end