class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
	  t.string :image	  
      t.timestamps	  
	  t.references :user, index: true, foreign_key: true
    end
  end
end
