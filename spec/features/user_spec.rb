require 'rails_helper'

RSpec.feature "Users", type: :feature do

  let(:user) { FactoryBot.create(:user) }
  let(:user_activated) { FactoryBot.create(:user, activated: true) }
  let(:other_user) { FactoryBot.create(:other_user) }

  scenario 'user successfully' do
    visit root_path
    click_link '社長になる'
    input_users_information(user)
    expect{click_button '新規登録'}.to change(User, :count).by(1)
    expect(page).to have_content('アカウント有効化用のメールを送信しましたので確認してください')
    user_activated
    click_on 'Account'
    click_link 'プロフィール'
    expect(response).to user_parh
    as_login_for_features
    click_link 'Users'
    expect(response).to users_path
    click_link user.name
    expect(response).to user_path
    click_on 'Account'
    click_link '設定'
    expext(response).to user_edit_path
    input_users_information(other_user)
    expect{click_button '完了'}.to be_success
    expect(user_activated).to be_valid
    as_logout_for_features
    expect(page).to have_content('社長になる')
  end

  private

    def input_users_information(user_information)
      fill_in 'アカウント名', with: user_information.name
      fill_in 'メールアドレス', with: user_information.email
      fill_in '成式会社名', with: user_information.coname
      fill_in 'パスワード', with: user_information.password
      fill_in 'パスワードをもう一度入力してください', with: user_information.password
    end

    def as_login_for_features
      visit root_path
      click_on 'ログイン'
      fill_in 'メールアドレス', with: user.email
      fill_in 'パスワード', with: user.password
      click_button 'ログイン'
    end

    def as_logout_for_features
      click_on 'Account'
      click_link 'ログアウト'
    end
end
