class WelcomeController < ApplicationController
  def index
    @projects = Project.all
    @language_progresses = { "java" => 90, "python" => 80, "sql" => 70, "ruby" => 50, 
                            "c/c++" => 60, "javascript" => 40, "scala" => 30, "go" => 20 }
    @skills = { "data"   => ["circle-data.png", "Big data, artificial intelligence", "Hadoop, Spark, PyTorch, Tensorflow"],
                "webdev" => ["circle-webdev.png", "Mobile and web development", "Android, Rails, React, Node, Spring, Rest"],
                "cloud"  => ["circle-cloud.png", "Cloud management", "Google cloud, AWS, Azure DevOps"],
                "system" => ["circle-system.png", "Distributed system management", "Kafka, Zookeeper, Thrift, Docker"]
              }
    @experiences = { "ceridian" => ["circle-ceridian.png", "Ceridian", "Toronto, ON, Canada", "Software developer"],
                      "adp" => ["circle-adp.png", "ADP", "Missisauga, ON, Canada", "Software developer"],
                      "khazanah" => ["circle-kai.png", "Khazanah Americas Inc", "San Francisco, CA, United States", "Software developer, Computer vision"],
                      "woodbine" => ["circle-woodbine.png", "Woodbine", "Etobicoke, ON, Canada", "Application developer"],
                      "ibm" => ["circle-ibm.png", "IBM", "Ottawa, ON, Canada", "Software developer"],
                      "windriver" => ["circle-windriver.png", "Wind River", "Ottawa, ON, Canada", "Software deeloper"]
                    }
    
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
