class Project < ActiveRecord::Base
  has_many :tasks

  attr_accessible :name, :description

  validates :name, presence: true, uniqueness: true
end
