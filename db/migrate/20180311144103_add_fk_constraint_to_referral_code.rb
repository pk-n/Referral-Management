class AddFkConstraintToReferralCode < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :referral_codes, :users
  end
end
