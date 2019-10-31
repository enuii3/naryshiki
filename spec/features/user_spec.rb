require 'rails_helper'

RSpec.feature "Users", type: :feature do
  scenario 'user successfully sign up' do
    visit root_path
    click_link '社長になる'
    expect{
     fill_in 'アカウント名', with: 'onarysan'
     fill_in 'メールアドレス', with: 'onarysan@naryshiki.com'
     fill_in '成式会社名', with: 'onary'
     fill_in 'パスワード', with: 'hogehoge'
     fill_in 'パスワードをもう一度入力してください', with: 'hogehoge'
     click_button '新規登録'
    }.to change(User, :count).by(1)
  end
end
