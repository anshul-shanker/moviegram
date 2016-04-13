class Post < ActiveRecord::Base
   validates :user_id, presence: true
   validates :image, presence: true
   has_attached_file :image,
     styles: { :medium => "640x" },
     storage: :database, ## This is the essence
     url: '/posts/:id/images/:id'.html_safe

   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
   belongs_to :user
   has_many :comments, dependent: :destroy
end
