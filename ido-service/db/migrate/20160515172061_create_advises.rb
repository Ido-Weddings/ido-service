class CreateAdvises < ActiveRecord::Migration[5.0]
  def change
    create_table :advises do |t|
      t.references :user, foreign_key: true
      t.references :enterprise, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
