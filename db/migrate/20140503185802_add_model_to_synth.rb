class AddModelToSynth < ActiveRecord::Migration
  def change
    add_column :synths, :model, :string
  end
end
