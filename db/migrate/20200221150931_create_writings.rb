class CreateWritings < ActiveRecord::Migration[5.2]
  def change
    create_table :writings do |t|
      t.references :user, foreign_key: true
      t.string :genre
      t.string :completion_date
      t.string :country_of_origin
      t.boolean :recommend
      t.string :author

      t.timestamps
    end
  end
end
