class CreateCores < ActiveRecord::Migration[5.2]
  def change
    create_table :cores do |t|
      t.string :area
      t.string :persona
      t.string :name
      t.text :short_description
      t.text :details

      t.timestamps
    end
  end
end
