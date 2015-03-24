class Attachment < ActiveRecord::Base
	after_save :add_to_search
	belongs_to :user
	validates :name, :attachment, presence: true
	searchkick
	mount_uploader :attachment, AttachmentUploader

	private

		def add_to_search
			self.reindex
		end
end
