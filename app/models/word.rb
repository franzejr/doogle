class Word < ActiveRecord::Base
  has_many :definitions
  validates :name, presence: true
  validates_uniqueness_of :name
end
