require 'rails_helper'

RSpec.describe Status, type: :model do


  it 'creates a status with a user' do
    stat = Status.create(:status => "teststat", :user => "testuser")
    expect(stat.status).to eql "teststat"
    expect(stat.user).to eql "testuser"
  end
  it 'has a uniqe user name' do
    old_stat = Status.create(:status => "teststat", :user => "testuser")
    new_stat = Status.create(:status => "teststat", :user => "testuser")
    expect(new_stat).to be_invalid
  end

  it 'can have likes' do
    stat = Status.create(:status => "teststat", :user => "testuser", :likes => 1)
    expect(stat.likes).to eql 1
  end
end
