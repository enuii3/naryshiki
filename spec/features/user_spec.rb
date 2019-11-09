require 'rails_helper'

RSpec.feature "Users", type: :feature do

  scenario 'user successfully' do
    visit root_path
    click_link '社長になる'
    fill_in 'アカウント名', with: 'enui'
    fill_in 'メールアドレス', with: 'enui@naryshiki.com'
    fill_in '成式会社名', with: 'nonress'
    fill_in 'パスワード', with: 'hogehoge'
    fill_in 'パスワードをもう一度入力してください', with: 'hogehoge'
    expect{click_button '新規登録'}.to change(User, :count).by(1)
    expect(page).to have_content('アカウント有効化用のメールを送信しましたので確認してください')
    #user_activated
    #click_on 'Account'
    #click_link 'プロフィール'
    #expect(response).to user_parh
    #as_login_for_features
    #click_link 'Users'
    #expect(response).to users_path
    #click_link user.name
    #expect(response).to user_path
    #click_on 'Account'
    #click_link '設定'
    #expext(response).to user_edit_path
    #input_users_information(other_user)
    #expect{click_button '完了'}.to be_success
    #expect(user_activated).to be_valid
    #as_logout_for_features
    #expect(page).to have_content('社長になる')
  end
end
