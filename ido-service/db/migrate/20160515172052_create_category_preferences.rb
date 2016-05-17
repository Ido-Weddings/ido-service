class CreateCategoryPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :category_preferences do |t|
      t.float :budget
      t.references :preference, foreign_key: true
      t.references :category
      t.timestamps
    end
  end
end
