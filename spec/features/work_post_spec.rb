require 'rails_helper'

RSpec.feature "WorkPosts", type: :feature do
  let(:user) { FactoryBot.create(:user) }

  scenario 'create workpost'
end
