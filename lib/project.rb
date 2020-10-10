class Project

  attr_reader :title

  @@all = [] # holds all instances of Project

  def initialize(title)
    @title = title
    @@all << self # on init, add self instance of Project
                  # to all instances of Project arr
  end

  def add_backer(backer)
    return ProjectBacker.new(self, backer)
  end

  def backers
    project_backers = ProjectBacker.all.select {|pb| pb.project == self}
    return project_backers.map {|pb| pb.backer}
  end

end