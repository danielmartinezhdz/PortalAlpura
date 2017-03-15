class Project < ApplicationRecord
  belongs_to :user
  has_many :projects_objetives, inverse_of: :project
  accepts_nested_attributes_for :projects_objetives
end
