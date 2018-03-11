class AddReferralCodeRefToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_reference(:referrals, :referral_code, foreign_key: true)
  end
end
