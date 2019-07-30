json.extract! meeting_entry, :id, :meeting_id, :family_name, :first_name, :family_kana, :first_kana, :phone, :email, :purpose, :note, :agreement, :created_at, :updated_at
json.url meeting_entry_url(meeting_entry, format: :json)
