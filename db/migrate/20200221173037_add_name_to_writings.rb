class AddNameToWritings < ActiveRecord::Migration[5.2]
  def change
    add_column :writings, :name, :string
  end
end
