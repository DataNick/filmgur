class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :artist
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
