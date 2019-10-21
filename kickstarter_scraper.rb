# require libraries/modules here
require 'nokogiri'
require 'pry'

# projects: kickstarter.css("li.project.grid_4")
  # title: project.css("h2.bbcard_name strong a").text
  # image link: project.css("div.project-thumbnail a img").attribute("src").value
  # description: project.css("p.bbcard_blurb").text
  # location: project.css("ul.project-meta span.location-name").text
  # percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
  
def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  
  

end

create_project_hash


# require 'open-uri'
# require 'pry'

# require_relative './course.rb'

# class Scraper
  
#   def get_page
 
#     doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
 
#     # doc.css(".post").each do |post|
#     #   course = Course.new
#     #   course.title = post.css("h2").text
#     #   course.schedule = post.css(".date").text
#     #   course.description = post.css("p").text
#     #end
#   end
  
#   def get_courses
#     self.get_page.css(".post")
#   end 
  
#   def make_courses
#   self.get_courses.each do |post|
#     course = Course.new
#     course.title = post.css("h2").text
#     course.schedule = post.css(".date").text
#     course.description = post.css("p").text
#     end
#   end 

#   def print_courses
#     self.make_courses
#     Course.all.each do |course|
#       if course.title && course.title != ""
#         puts "Title: #{course.title}"
#         puts "  Schedule: #{course.schedule}"
#         puts "  Description: #{course.description}"
#       end
#     end
#   end
  
# end

# Scraper.new.print_courses

