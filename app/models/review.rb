class Review < ActiveRecord::Base
  belongs_to :chef
  belongs_to :recipe
  validates_uniqueness_of :chef, scope: :recipe
  validates :title, presence: true, 
                    length: {minimum: 3, maximum: 50}
  validates :body, presence: true,
                   length: {minimum: 10, maximum: 300}
  validates :chef_id, presence: true
  validates :recipe_id, presence: true
end