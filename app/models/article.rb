class Article < ApplicationRecord
  has_many :comments


  def self.search(search)
    if search
          Article.where("name LIKE '%#{search}%'")
    else
          Article.all
    end
  end
end
