class AddColumnsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :stripe_payment_id, :string
    add_column :products, :status, :string
  end
end
