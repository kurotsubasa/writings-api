class RemoveRecommendFromWritings < ActiveRecord::Migration[5.2]
  def change
    remove_column :writings, :recommend, :boolean
  end
end
