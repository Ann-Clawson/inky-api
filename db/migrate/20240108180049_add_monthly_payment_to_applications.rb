class AddMonthlyPaymentToApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :monthly_payment, :decimal, precision: 6, scale: 2
  end
end
