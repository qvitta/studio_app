class Admin::EventsController < Admin::BaseController
  def index
    super
    render 'index'
  end
end
