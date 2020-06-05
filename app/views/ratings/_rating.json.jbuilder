json.extract! rating, :id, :wine_id, :enologist_id, :score, :created_at, :updated_at
json.url rating_url(rating, format: :json)
