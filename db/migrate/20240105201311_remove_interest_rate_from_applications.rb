class RemoveInterestRateFromApplications < ActiveRecord::Migration[7.0]
  def change
    remove_column :applications, :interest_rate, :integer
  end
end
