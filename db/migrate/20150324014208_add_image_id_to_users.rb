class AddImageIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :file_id, :string
  end
end
