class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :description
      t.string :img_url
      t.text :address

      t.timestamps
    end
  end
end
