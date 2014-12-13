class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.text :url
      t.text :title
    end
  end
end
