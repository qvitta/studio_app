class Event < ActiveRecord::Base
  attr_accessible :description, :due_at, :location, :name
end
