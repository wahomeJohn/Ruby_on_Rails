class AddCardInfoToUsers < ActiveRecord::Migration[7.0]
  def change
  	add_column :users, :stripe_id, :string
  	add_column :users, :card_brand, :string
  	add_column :users, :card_last4, :string
  	add_column :users, :card_exp_month, :string
  	add_column :users, :card_exp_year, :string
  	add_column :users, :expires_at, :datetime
  end
end
