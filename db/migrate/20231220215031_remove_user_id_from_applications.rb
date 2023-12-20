class RemoveUserIdFromApplications < ActiveRecord::Migration[7.0]
  def change
    remove_column :applications, :user_id, :string
  end
end
