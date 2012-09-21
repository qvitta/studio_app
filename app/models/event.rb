class Event < ActiveRecord::Base
  attr_accessible :description, :due_at, :location, :name

  scope :cms_collection, ->  {}
end
