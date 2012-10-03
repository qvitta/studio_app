# encoding: utf-8
class Admin::BaseController < InheritedResources::Base
  respond_to :html, :js
end
