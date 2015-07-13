class Choice < ActiveRecord::Base
  has_many :comments
  validates :option, presence: true
  validates :option_a, presence: true
  validates :option_b, presence: true

  def votes
    return select([:option_a_votes, :option_b_votes])
  end
end
