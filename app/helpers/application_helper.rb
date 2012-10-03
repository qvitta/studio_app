class BodyClasser
  attr_reader :helper, :collection

  delegate :controller_name, :action_name, to: :helper

  # BodyClasser.new(helper)
  def initialize(helper)
    @helper = helper
  end

  def classes
    [controller_name, action_name, "#{controller_name}-#{action_name}"]
  end

  def to_html
    classes.join(' ')
  end
end

module ApplicationHelper
  def body_classes
    BodyClasser.new(self).to_html
  end

  def show_attributes_for(model)
    case model.name
    when "Project"
      [ :name, :description, :updated_at ]
    when "Event"
      [ :name, :location, :due_at ]
    when "Task"
      [ :name, :done ]
    else
      [ :id, :updated_at ]
    end
  end
end
