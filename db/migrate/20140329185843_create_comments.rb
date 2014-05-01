class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :synth, index: true
      t.references :user, index: true
      t.string :comments

      t.timestamps
    end
  end
end
