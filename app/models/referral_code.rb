class ReferralCode < ApplicationRecord
  validates :code, uniqueness: true

  belongs_to :user
  has_many :referrals
end
