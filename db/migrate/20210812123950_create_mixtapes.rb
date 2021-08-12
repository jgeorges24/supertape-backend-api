class CreateMixtapes < ActiveRecord::Migration[6.1]
  def change
    create_table :mixtapes do |t|
      t.string :title
      t.string :description
      t.string :artist
      t.integer :tracks, :default => 0
      t.integer :likes, :default => 0
      t.integer :dislikes, :default => 0
      t.string :genre

      t.timestamps
    end
  end
end
