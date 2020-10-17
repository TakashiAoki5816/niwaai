require "rails_helper"

RSpec.describe 'Users', type: :system, js: true do
  context '新規ユーザーの場合' do
    before do
      visit '/users/sign_up'
      fill_in 'user[name]',         with: 'tester'
      fill_in 'user[email]',  with: 'tester@sample.com'
      fill_in 'user[password]',    with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
    end

    it 'ユーザーの新規登録ができる' do
      click_button '新規登録'
      expect(page).to have_content "アカウント登録が完了しました。"
      expect(current_path).to eq root_path
    end

    it "ログインをクリックした場合ログインページに遷移する" do
      find('.Login-Button').click
      expect(current_path).to eq new_user_session_path
    end


  end
end