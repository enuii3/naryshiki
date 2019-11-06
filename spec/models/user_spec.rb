require 'rails_helper'

describe User do

  it 'has a valid factory' do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it 'is invalid without a name' do
    user =FactoryBot.build(:user,name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a coname' do
    user =FactoryBot.build(:user,coname: nil)
    user.valid?
    expect(user.errors[:coname]).to include("can't be blank")
  end

  it 'is invalid without an email' do
    user =FactoryBot.build(:user,email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'is invalid with a duplicate email address' do
    FactoryBot.create(:user, email: 'nonress@naryshiki.com')
    user = FactoryBot.build(:user, email: 'nonress@naryshiki.com')
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  it 'does something with multiple users' do
    user1 = FactoryBot.create(:user)
    user2 = FactoryBot.create(:user)
    expect(true).to be_truthy
  end
end
