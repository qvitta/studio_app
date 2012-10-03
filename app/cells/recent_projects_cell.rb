class RecentProjectsCell < Cell::Rails

  def sidebar(args={})
    @recent_projects = args[:projects] || Project.order('updated_at DESC').limit(5)
    render
  end

end
