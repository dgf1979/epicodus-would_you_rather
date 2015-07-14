require 'rails_helper'

include ApplicationHelper

describe '.human_date' do
  it 'should convert a timestamp to a friendly date' do
    timestamp = Time.new(2015, 7, 14).getutc
    expect(human_date(timestamp)).to eq("Jul. 14")
  end
end

describe '.human_time' do
  it 'should convert a timestamp to a friendly time' do
    timestamp = Time.new(2015, 7, 14).getutc
    expect(human_time(timestamp)).to eq("12:00 AM")
  end
end
