class Author < ApplicationRecord
  has_many :meetings
  has_many :MeetingEntries
  has_many :questions
end
