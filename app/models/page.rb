class Page < ActiveRecord::Base
  attr_accessible :content, :description, :keywords, :published, :slug, :title

  scope :published, -> { where published: true }

  validates :title, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
  validates :content, presence: true
end
