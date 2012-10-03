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

  def admin_menu_link(resources)
    text = I18n.t("admin.menu.#{resources}", default: resources.to_s.titleize)
    menu_link(text, [:admin, resources], resources)
  end

  def menu_link(text, url, current)
    active = controller_name == current.to_s ? "active" : nil
    content_tag(:li, class: active) do
      link_to text, url
    end
  end

  def my_simple_form(resource, &block)
    form_url = resource.new_record? ? collection_url : resource_url(resource)
    simple_form_for(resource, { url: form_url,  html: { class: 'form-vertical'} }, &block)
  end

  def form_attributes_for(model)
    model.accessible_attributes.select {|attr| !attr.blank? }
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
