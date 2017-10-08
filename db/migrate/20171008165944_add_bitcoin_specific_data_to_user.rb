class AddBitcoinSpecificDataToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bitcoin_de_api_key, :string
  end
end
