class CreateLands < ActiveRecord::Migration[5.2]
  def change
    create_table :lands do |t|
      t.string :role
      t.string :domain
      t.string :tags
      t.float :version
      t.json :data
      t.json :head
      t.datetime :start
      t.datetime :end
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
