require 'body_classer'

module ApplicationHelper
  def body_classes
    BodyClasser.new(self).to_html
  end
end
