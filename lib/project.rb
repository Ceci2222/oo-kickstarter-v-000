class Project
  attr_accessor :backers, :backer 
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.project = self
    backer.backed_projects << backer.project
  end
end