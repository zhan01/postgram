class Publish < ApplicationRecord
  belongs_to :user
  
  has_attached_file :image, styles: { medium: "600x600>", thumb: "500x400>" }, :default_url => "https://39lm5827fzpu40ze7s2y2ses-wpengine.netdna-ssl.com/wp-content/uploads/2016/03/dsc4478_25638165340_o-1024x683.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.search(search)
      where("description LIKE ?", "%#{search}%") 
      where("country LIKE ?", "%#{search}%")
  end
end
