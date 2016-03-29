class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments

	validates :title, presence: { message: "cannot be empty." }, allow_blank: false
	validates :url, presence: { message: "cannot be empty." }, allow_blank: false

end
