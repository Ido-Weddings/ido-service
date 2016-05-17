class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :url
      t.references :user
      t.references :category_enterprise
      t.references :message

      t.timestamps
    end
  end
end
