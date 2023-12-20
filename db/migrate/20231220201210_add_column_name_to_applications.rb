class AddColumnNameToApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :description, :text
  end
end
