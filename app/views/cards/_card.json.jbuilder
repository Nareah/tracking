json.extract! card, :id, :card_number, :card_type, :user_id, :created_at, :updated_at
json.url card_url(card, format: :json)
