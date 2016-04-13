class CreatePostImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer    :post_id
      t.string     :style
      t.binary     :file_contents
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
