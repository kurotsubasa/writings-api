class RemoveCountryOfOriginFromWritings < ActiveRecord::Migration[5.2]
  def change
    remove_column :writings, :country_of_origin, :string
  end
end
