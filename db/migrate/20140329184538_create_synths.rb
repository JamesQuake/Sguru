class CreateSynths < ActiveRecord::Migration
  def change
    create_table :synths do |t|
      t.string :manufacturer
      t.string :summary
      t.string :modification

      t.timestamps
    end
  end
end
