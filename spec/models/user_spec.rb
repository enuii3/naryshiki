require 'rails_helper'

RSpec.describe User, type: :model do

  it 'is valid user' do
    user = FactoryBot.create(:user)
  end
end
