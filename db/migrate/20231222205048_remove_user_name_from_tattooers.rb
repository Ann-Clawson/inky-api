class RemoveUserNameFromTattooers < ActiveRecord::Migration[7.0]
  def change
    remove_column :tattooers, :user_name, :string
  end
end
