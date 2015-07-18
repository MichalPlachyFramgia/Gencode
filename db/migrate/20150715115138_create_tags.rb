class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.boolean :enclose
      t.references :type
      t.timestamps null: false
    end
  end
end
