json.extract! question, :id, :family_name, :first_name, :family_kana, :first_kana, :phone, :email, :content, :agreement, :created_at, :updated_at
json.url question_url(question, format: :json)
