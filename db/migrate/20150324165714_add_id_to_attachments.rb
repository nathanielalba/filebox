class AddIdToAttachments < ActiveRecord::Migration
  def change
  	add_column :attachments, :attachment_id, :string
  end
end
