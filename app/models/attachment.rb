class Attachment < ActiveRecord::Base
	attachment :attachment
	belongs_to :user
	validates :name, :attachment, presence: true
end
