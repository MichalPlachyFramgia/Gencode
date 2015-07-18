class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.string :type
      t.boolean :has
      t.integer :father
      t.integer :son
      t.timestamps null: false
    end
  end
end
