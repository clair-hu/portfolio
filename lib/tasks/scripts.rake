namespace :scripts do
  desc "populate db"
  task add_data_to_db: :environment do

    languages = { "java" => 90, "python" => 80, "sql" => 70, "ruby" => 50, 
      "c/c++" => 60, "javascript" => 40, "scala" => 30, "go" => 20 }
    
    languages.each do |lang, value|
      LanguageProgress.create({language: lang, progress: value})
    end

    skills = { "data"   => ["circle-data.png", "Big data, artificial intelligence", "Hadoop, Spark, PyTorch, Tensorflow"],
      "webdev" => ["circle-webdev.png", "Mobile and web development", "Android, Rails, React, Node, Spring, Rest"],
      "cloud"  => ["circle-cloud.png", "Cloud management", "Google cloud, AWS, Azure DevOps"],
      "system" => ["circle-system.png", "Distributed system management", "Kafka, Zookeeper, Thrift, Docker"]
    }

    skills.each do |_, data|
      Skill.create({img_path: data.first, category: data.second, framework: data.third})
    end

    experiences = { "ceridian" => ["circle-ceridian.png", "Ceridian", "Toronto, ON, Canada", "Software developer"],
      "adp" => ["circle-adp.png", "ADP", "Missisauga, ON, Canada", "Software developer"],
      "khazanah" => ["circle-kai.png", "Khazanah Americas Inc", "San Francisco, CA, United States", "Software developer, Computer vision"],
      "woodbine" => ["circle-woodbine.png", "Woodbine", "Etobicoke, ON, Canada", "Application developer"],
      "ibm" => ["circle-ibm.png", "IBM", "Ottawa, ON, Canada", "Software developer"],
      "windriver" => ["circle-windriver.png", "Wind River", "Ottawa, ON, Canada", "Software deeloper"]
    }

    experiences.each do |_, data|
      Experience.create({img_path: data.first, company: data.second, location: data.third, job_title: data.fourth})
    end
  end
end
