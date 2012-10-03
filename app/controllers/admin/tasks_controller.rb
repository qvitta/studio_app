class Admin::TasksController < Admin::BaseController
  def index
    super
    redirect_to root_path
  end
end
