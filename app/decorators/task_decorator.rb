class TaskDecorator < Draper::Base
  decorates :task

  # helpers.helper_name
  # h.helper_name
  # include Draper::LazyHelpers

  def show_attributes
    [:project, :name, :done]
  end

  def project
    h.render_cell(:project, :link, project: task.project)
  end

  allows :name, :done, :to_key

  def done
    task.done? ? "Yes" : "No"
  end
end
