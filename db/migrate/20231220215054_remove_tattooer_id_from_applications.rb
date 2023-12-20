class RemoveTattooerIdFromApplications < ActiveRecord::Migration[7.0]
  def change
    remove_column :applications, :tattooer_id, :string
  end
end
