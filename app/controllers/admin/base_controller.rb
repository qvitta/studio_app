# encoding: utf-8
class Admin::BaseController < ApplicationController
  before_filter :load_resource

  def index
    info_logger "Inicio Acción index"
    @resources = Array(@resource)
    info_logger "Fin Acción index"
  end

  protected

  def info_logger(str)
    Rails.logger.info "[INFO] #{str}"
  end

  def collection_name
    controller_name  #=> "tasks"
  end
  helper_method :collection_name

  def resource_name
    collection_name.singularize
  end
  helper_method :resource_name

  def load_resource
    @collection = {a: 1, b: 2}
    instance_variable_set("@#{collection_name}", @collection) #=> @projects, @tasks
  end

  def collection
    @collection
  end
  helper_method :collection
end
