json.extract! transaction, :id, :user_id, :mobile, :card_id, :transaction_time, :marchent_name, :amount, :status, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
