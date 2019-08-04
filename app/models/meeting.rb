class Meeting < ApplicationRecord
  # validates:status
  # belongs_to :author
  has_many :meeting_entries
end
