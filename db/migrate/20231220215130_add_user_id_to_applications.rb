class AddUserIdToApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :user_id, :integer
  end
end
