class Myarticle < ActiveRecord::Base
  belongs_to :myuser
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
  validates :myuser_id, presence: true
end
