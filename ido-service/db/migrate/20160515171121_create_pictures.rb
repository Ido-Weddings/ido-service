class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :url
      t.references :user, foreign_key: true
      t.references :category_enterprise, foreign_key: true
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
