class Event < ActiveRecord::Base
  attr_accessible :name, :location, :due_at, :description

  def self.cms_collection(*args)
    scoped
  end
end
