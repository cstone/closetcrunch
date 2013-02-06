class Page < ActiveRecord::Base
  attr_accessible :content, :description, :keywords, :published, :slug, :title
end
