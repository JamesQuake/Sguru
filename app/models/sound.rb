class Sound < ActiveRecord::Base
  belongs_to :synth
  has_attached_file :audio_file,
                    :url => ":rails_root/public/assets/:class/:id/:attachment/:style.:extension",
                    :path => ":rails_root/public/assets/:class/:id/:attachment/:style.:extension"
  validates_attachment_content_type :audio_file, :content_type => ['audio/wav', 'audio/mp3', 'audio/aif', 'audio/ogg']

end
