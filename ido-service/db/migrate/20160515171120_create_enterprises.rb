class CreateEnterprises < ActiveRecord::Migration[5.0]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :description
      t.string :telephone
      t.string :cellphone
      t.string :email
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :register_id
      t.boolean :is_freelance

      t.timestamps
    end
  end
end
