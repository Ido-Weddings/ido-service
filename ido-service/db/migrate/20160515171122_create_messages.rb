class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :enterprise, foreign_key: true
      t.boolean :posted_by_user

      t.timestamps
    end
  end
end
