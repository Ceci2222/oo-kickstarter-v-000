class Project
  attr_accessor :backers 
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    Backer.backed_projects << backer.project
  end
end