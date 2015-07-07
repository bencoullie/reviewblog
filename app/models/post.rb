class Post < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :user

	# TAGGING
	acts_as_taggable # Alias for acts_as_taggable_on :tags

	# PAPERCLIP
	has_attached_file :background, styles: { full: "1920x1080#", large: "500x500#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :background, content_type: /\Aimage\/.*\Z/

	# Read time calculations
	def word_count
    content.split.size
  end

  def reading_time
    (word_count / 180.0).ceil
  end
end
