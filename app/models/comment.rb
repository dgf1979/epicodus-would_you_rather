class Comment < ActiveRecord::Base
  belongs_to :choice
  validates :text, presence: true
  validates :choice_id, presence: true
  default_scope { order('created_at DESC') }
end
