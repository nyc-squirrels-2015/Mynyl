class UpdateVinyls < ActiveRecord::Migration
  def change
    add_column :vinyls, :user_id, :integer
    add_column :vinyls, :artist, :string
  end
end
