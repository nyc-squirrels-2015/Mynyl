class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #will not create the object if name and password are empty
      t.string :name, null: false
      t.string :password_digest, null:false

    end
  end
end
