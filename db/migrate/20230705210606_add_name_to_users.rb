class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :stripe_users, :name, :string
  end
end
