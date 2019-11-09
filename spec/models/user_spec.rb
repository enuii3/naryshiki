require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user){ FactoryBot.create(:user) }

  subject { user }

  describe '#create' do
    it {is_expected.to be_valid }
  end
end
