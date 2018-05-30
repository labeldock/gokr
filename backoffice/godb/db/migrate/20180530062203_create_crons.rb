class CreateCrons < ActiveRecord::Migration[5.2]
  def change
    create_table :crons do |t|
      t.string :every
      t.json :parameter
      t.references :task, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
