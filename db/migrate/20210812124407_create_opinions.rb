class CreateOpinions < ActiveRecord::Migration[6.1]
  def change
    create_table :opinions do |t|
      t.integer :likes, :default => 0
      t.string :mood
      t.string :content
      t.integer :mixtape_id

      t.timestamps
    end
  end
end
