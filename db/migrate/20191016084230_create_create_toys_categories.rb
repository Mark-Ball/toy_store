class CreateCreateToysCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :create_toys_categories do |t|
      t.references :toys, foreign_key: true
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
