class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :name
      t.text :details
      t.text :url

      t.timestamps
    end
  end
end
