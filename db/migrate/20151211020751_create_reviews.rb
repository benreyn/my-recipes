class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :chef_id
      t.integer :recipe_id
      t.timestamps
    end
  end
end
