class Photo < ApplicationRecord
belongs_to :room

# has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
# validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

has_attached_file :image, { validate_media_type: false }

# Validate content type
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

# Validate filename
validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
end