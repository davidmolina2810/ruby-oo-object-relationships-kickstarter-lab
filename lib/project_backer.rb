class ProjectBacker

  attr_reader :project, :backer

  @@all = [] # holds all instances of ProjectBacker


  def initialize(project, backer)
    @project = project
    @backer = backer
    @@all << self # on initialization, add self instance 
                  # to all instances of ProjectBacker
  end


  def self.all
    return @@all
  end

end
