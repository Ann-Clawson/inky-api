class RemoveAddressFromTattooers < ActiveRecord::Migration[7.0]
  def change
    remove_column :tattooers, :address, :string
  end
end
