class Event < ActiveRecord::Base
  attr_accessible :description, :due_at, :location, :name

  def self.cms_collection(*args)
    scoped
  end
end
