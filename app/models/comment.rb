class Comment < ActiveRecord::Base
  belongs_to :choice
  validates :text, presence: true
end
