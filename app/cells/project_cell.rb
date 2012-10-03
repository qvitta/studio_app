class ProjectCell < Cell::Rails
  cache :link, expire_in: 15.minutes
  cache :display, expire_in: 5.minutes

  def setup(args)
    @project = args[:project]
  end

  def display(args)
    setup(args)
    render
  end

  def link(args)
    setup(args)
    render
  end

end
