class CreateTattooers < ActiveRecord::Migration[7.0]
  def change
    create_table :tattooers do |t|
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :user_name
      t.string :password_digest
      t.string :adress
      t.string :phone_number
      t.string :tattoo_shop

      t.timestamps
    end
  end
end
