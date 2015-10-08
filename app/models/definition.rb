class Definition < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :word
end
