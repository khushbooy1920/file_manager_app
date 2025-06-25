json.extract! file_item, :id, :name, :folder_id, :created_at, :updated_at
json.url file_item_url(file_item, format: :json)
