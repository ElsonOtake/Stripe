class RenameUsersToStripeUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table :users, :stripe_users
  end
end
