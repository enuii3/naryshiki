require 'rails_helper'

RSpec.describe WorkPost, type: :model do
<<<<<<< HEAD

  let(:user) { FactoryBot.create(:user) }
  let(:workpost) { FactoryBot.create(:workpost) }

<<<<<<< HEAD
  xit 'is valid with category' do
    workpost.update_attributes(category_ids: 1).valid?
    expect(workpost).to be_valid
  end

  xit 'is invalid without category' do
    workpost.valid?
    expect(workpost.errors[:category_ids]).to include("can't be blank")
=======
  it 'is valid workpost' do

>>>>>>> parent of 9a8d83c... generate features user && workpost controller tests
  end
=======
  pending "add some examples to (or delete) #{__FILE__}"
>>>>>>> parent of 0118af8...  change category_ides -> categories
end
