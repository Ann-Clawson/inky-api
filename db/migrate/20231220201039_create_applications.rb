class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :user_id
      t.string :tattooer_id
      t.integer :amount
      t.integer :number_of_months
      t.date :date_of_appt
      t.boolean :approved

      t.timestamps
    end
  end
end
