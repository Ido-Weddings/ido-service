class CreateCategoryEnterprises < ActiveRecord::Migration[5.0]
  def change
    create_table :category_enterprises do |t|
      t.references :category, foreign_key: true
      t.references :enterprise
      t.float :base_price
      t.string :description
      t.integer :capacity

      t.timestamps
    end
  end
end
