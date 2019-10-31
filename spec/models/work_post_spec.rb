require 'rails_helper'

RSpec.describe WorkPost, type: :model do

  let(:user) { FactoryBot.create(:user) }
  let(:category) { FactoryBot.create(:category) }
  let(:workpost) { FactoryBot.create(:work_post, user: user, category_ids: nil) }

  it 'is valid with category' do
    workpost.update_attributes(category_ids: 1).valid?
    expect(workpost).to be_valid
  end

  it 'is invalid without category' do
    workpost.valid?
    expect(workpost.errors[:category_ids]).to include("can't be blank")
  end
end
