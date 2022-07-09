class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :home
      t.string :away
      t.integer :homescr
      t.integer :awayscr

      t.timestamps
    end
  end
end
