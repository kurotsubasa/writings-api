class AddStatusToReadings < ActiveRecord::Migration[5.2]
  def change
    add_column :readings, :status, :string
  end
end
