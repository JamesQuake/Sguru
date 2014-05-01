class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :studio, index: true
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
