require 'pry'

class Backer
  
  attr_reader :name, :project_title

  @@all = [] # holds all instances of Backer

  def initialize(name)
    @name = name
    @@all << self # every time new instance of Backer, add self 
                  # to instances of Backer
  end

  def back_project(project)
    return ProjectBacker.new(project, self)
  end

  def backed_projects
    project_backers = ProjectBacker.all.select {|pb| pb.backer == self}
    return project_backers.map {|pb| pb.project}
  end

end