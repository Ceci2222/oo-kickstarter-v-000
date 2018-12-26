class Backer
  attr_accessor :backed_projects
  attr_reader :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(title)
    @backed_projects << Project.new(title)
    Project.backers << Project.new.backer
  end
  
  
  
end