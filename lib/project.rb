class Project
  attr_accessor :backers, :backer 
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    backer.project = self
    Backer.backed_projects << self
    @backers << backer
  end
end