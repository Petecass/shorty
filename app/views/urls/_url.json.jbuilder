json.extract! url, :id, :short_url, :full_url, :http_status, :clicks, :created_at, :updated_at
json.url url_url(url, format: :json)
