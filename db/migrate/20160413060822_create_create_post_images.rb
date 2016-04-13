class CreateCreatePostImages < ActiveRecord::Migration
  def change
    create_table :create_post_images do |t|

      t.timestamps null: false
    end
  end
end
