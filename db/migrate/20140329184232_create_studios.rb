class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :name
      t.string :summary
      t.string :city
      t.string :items

      t.timestamps
    end
  end
end
