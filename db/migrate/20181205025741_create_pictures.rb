class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.text    :text
      t.text    :image
      t.timestamps null: true
    end
  end
end
