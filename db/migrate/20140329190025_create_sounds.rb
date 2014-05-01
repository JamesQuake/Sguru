class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
      t.references :synth, index: true
      t.string :audio_file

      t.timestamps
    end
  end
end
