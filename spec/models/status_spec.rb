require 'rails_helper'

RSpec.describe Status, type: :model do


  it 'creates a status with a user' do
    stat = Status.create(:status => "teststat", :user => "testuser")
    expect(stat.status).to eql "teststat"
    expect(stat.user).to eql "testuser"
  end

end
