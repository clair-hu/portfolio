class WelcomeController < ApplicationController
  def index
    @projects = Project.all
    @language_progresses = { "java" => 90, "python" => 80, "sql" => 70, "ruby" => 50, 
                            "c/c++" => 60, "javascript" => 40, "scala" => 30, "go" => 20}
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
