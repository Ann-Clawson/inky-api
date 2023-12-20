class RemoveColumnFromApplications < ActiveRecord::Migration[7.0]
  def change
    remove_column :applications, :date_of_appt, :date
  end
end
