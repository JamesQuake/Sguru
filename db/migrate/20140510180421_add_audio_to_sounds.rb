class AddAudioToSounds < ActiveRecord::Migration
  def self.up
    add_attachment :sounds, :audio_file
  end

  def self.down
    remove_attachment :sounds, :audio_file
  end
  
end
