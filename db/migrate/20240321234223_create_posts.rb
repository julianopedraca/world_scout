class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :titile
      t.string :content

      t.timestamps
    end
  end
end
