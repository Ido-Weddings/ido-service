class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.integer :guest_amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
