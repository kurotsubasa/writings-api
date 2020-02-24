class RemoveCompletionDateFromWritings < ActiveRecord::Migration[5.2]
  def change
    remove_column :writings, :completion_date, :string
  end
end
