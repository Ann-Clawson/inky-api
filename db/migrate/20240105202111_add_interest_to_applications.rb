class AddInterestToApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :interest_rate, :decimal, precision: 3, scale: 2
  end
end
