require 'rails_helper'

describe Choice do
  it { should validate_presence_of :option }
  it { should validate_presence_of :option_a }
  it { should validate_presence_of :option_b }
  it { should have_many :comments }
end
