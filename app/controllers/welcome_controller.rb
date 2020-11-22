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
    @experiences = { "ceridian" => ["circle-ceridian.png", "Ceridian", "Software developer"],
                      "adp" => ["circle-adp.png", "ADP", "Software developer"],
                      "khazanah" => ["circle-kai.png", "Khazanah Americas Inc", "Software developer, Computer vision"],
                      "woodbine" => ["circle-woodbine.png", "Woodbine", "Application developer"],
                      "ibm" => ["circle-ibm.png", "IBM", "Software developer"],
                      "windriver" => ["circle-windriver.png", "Wind River", "Software deeloper"]
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
