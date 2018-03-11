class CreateReferralCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :referral_codes do |t|
      t.string :code

      t.timestamps
    end
    add_index :referral_codes, :code, unique: true
    add_reference(:referral_codes, :user)
  end
end
