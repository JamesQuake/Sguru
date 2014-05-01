class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :synth, index: true
      t.string :images

      t.timestamps
    end
  end
end
