class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :origin
      t.integer :first_album_year

      t.timestamps null: false
    end
  end
end
