class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :Title
      t.string :Content
      t.references :user, index: true

      t.timestamps
    end
  end
end
