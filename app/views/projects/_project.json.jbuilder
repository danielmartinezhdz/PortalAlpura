json.extract! project, :id, :user_id, :name, :desciption, :status, :priority, :contribution, :term, :start, :finish, :start_real, :finish_real, :created_at, :updated_at
json.url project_url(project, format: :json)
