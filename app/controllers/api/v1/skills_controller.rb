module Api
    module V1
        class SkillsController < ApplicationController
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
            private
            def skill_params
                params.require(:skill).permit(:name)
            end
        end
    end
end