class AddDefaultToApplications < ActiveRecord::Migration[7.0]
  def change
    change_column :applications, :approved, :boolean, :default => false
  end
end
