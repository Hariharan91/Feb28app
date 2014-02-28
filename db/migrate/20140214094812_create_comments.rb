class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comments
      t.references :user, index: true
      t.references :Post, index: true

      t.timestamps
    end
  end
end
