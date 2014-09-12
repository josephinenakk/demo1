class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      #t.referance :post

      t.timestamps
    end
  end
end
