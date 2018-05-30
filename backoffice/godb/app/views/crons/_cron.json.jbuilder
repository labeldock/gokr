json.extract! cron, :id, :every, :parameter, :task_id, :user_id, :created_at, :updated_at
json.url cron_url(cron, format: :json)
