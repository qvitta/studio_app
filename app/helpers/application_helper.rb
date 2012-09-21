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
    #binding.pry
    BodyClasser.new(self).to_html
  end
end
