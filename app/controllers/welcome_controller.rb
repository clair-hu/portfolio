class WelcomeController < ApplicationController
  def index
    @projects = Project.all
    @language_progresses = LanguageProgress.all
    @skills = Skill.all
    @experiences = Experience.all
    
  end

  def show
    params.require(:id)

    project = Project.find(params[:id])
    @project_name = project.name
    @project_title = project.title
    @project_description = project.description
    @project_url = project.url
    @project_image_path = project.img_path
  end
end
