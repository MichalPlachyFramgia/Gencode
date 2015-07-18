class CreateAttibutes < ActiveRecord::Migration
  def change
    create_table :attibutes do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
