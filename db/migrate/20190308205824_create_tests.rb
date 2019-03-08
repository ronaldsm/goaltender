class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :priority
      t.string :persona
      t.text :description

      t.timestamps
    end
  end
end
