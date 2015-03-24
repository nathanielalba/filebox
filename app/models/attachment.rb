class Attachment < ActiveRecord::Base
	after_save :add_to_search

	attachment :attachment
	belongs_to :user
	validates :name, :attachment, presence: true
	searchkick

	private

		def add_to_search
			self.reindex
		end
end
