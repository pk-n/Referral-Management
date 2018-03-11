class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|

      t.timestamps
    end
    add_reference(:user_roles, :user, index: { unique: true }, foreign_key: true)
    add_reference(:user_roles, :role, foreign_key: true)
  end
end
