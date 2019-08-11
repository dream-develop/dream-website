class MeetingEntry < ApplicationRecord
  belongs_to :meeting, optional: true
  validates :family_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :family_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :family_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :phone, presence: true, format: { with: /\A\d{10,11}\z/}
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :agreement, presence: true
  validates :meeting_id, presence: true
end
