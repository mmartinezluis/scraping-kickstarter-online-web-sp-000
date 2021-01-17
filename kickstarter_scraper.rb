# require libraries/modules here
require "nokogiri"
require "pry"





def create_project_hash
  # write your code here

  html=File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
<<<<<<< HEAD

  projects = { }

  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description =>project.css("div.project-thumbnail a img").attribute("src").value,
      :location => project.css("p.bbcard_blurb").text.strip,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%", " ").to_i
    }
  end

  projects
end
=======
  projects = kickstarter.css("li.project.grid_4")
  binding.pry
  projects.each do |project|
    nested_project = { }
    nested_project.key = project.css("strong").text.split("\n")[1]
    nested_project = { :image_link => " " }
  end

  #project_name = kickstarter.css("li.project.grid_4")[0].css("strong").text.split("\n")[1]
  project_name = kickstarter.css("li.project.grid_4")[0].css("h2.bbcard_name strong a").text
  image_link = kickstarter.css("li.project.grid_4")[0].css("div.project-thumbnail a img").attribute("src").value
  description = kickstarter.css("li.project.grid_4")[0].css("p.bbcard_blurb").text.strip
  location = kickstarter.css("li.project.grid_4")[0].css("p.bbcard_blurb").text.strip
  
end
sent = "\nMoby Dick: An Oratorio\nSuccessful!77%$2,772Funded\n \n"
>>>>>>> adc894ed3ab0767ea88e3b7256adf4f52dbaafcd
