class CreateVinyl < ActiveRecord::Migration
  def change
    create_table :vinyls do |t|
      t.string :title, null: false
      t.text :review
      #artwork will store url strings
      t.string :artwork

      t.timestamps
    end
  end
end
