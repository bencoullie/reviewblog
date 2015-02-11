class Post < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :user

	# PAPERCLIP
	has_attached_file :background, styles: { full: "1920x1080#", large: "500x500#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :background, content_type: /\Aimage\/.*\Z/

	def word_count
    content.split.size
  end

  def reading_time
    (word_count / 180.0).ceil
  end
end
