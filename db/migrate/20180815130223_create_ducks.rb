class CreateDucks < ActiveRecord::Migration[5.2]
  def change
    create_table :ducks do |t|
      t.string :name
      t.string :description
      t.integer :student_id, foreign_key: true

      t.timestamps
    end
  end
end
