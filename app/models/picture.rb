class Picture < ActiveRecord::Base
  belongs_to :synth

  has_attached_file :image, styles: { medium: '300x300>'}

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"]

end
