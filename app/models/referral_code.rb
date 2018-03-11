class ReferralCode < ApplicationRecord
  validates :code, uniqueness: true
end
