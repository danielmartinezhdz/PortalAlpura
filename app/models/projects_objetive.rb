class ProjectsObjetive < ApplicationRecord
  belongs_to :project, inverse_of: :projects_objetives
  validates :project, presence: true
end
