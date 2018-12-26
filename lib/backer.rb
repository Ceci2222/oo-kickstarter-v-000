require 'pry'
class Backer
  attr_accessor :backed_projects, :project
  attr_reader :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    project.backer = self
    #binding.pry
    Project.backers << self.name
    @backed_projects << project.title
  end
  
  
  
end