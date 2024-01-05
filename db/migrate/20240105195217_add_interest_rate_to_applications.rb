class AddInterestRateToApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :interest_rate, :integer
  end
end
