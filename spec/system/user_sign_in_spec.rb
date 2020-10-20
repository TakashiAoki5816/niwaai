require "rails_helper"

RSpec.describe 'Users', type: :system, js: true do
  it 'ゲストユーザーとしてログインできる' do
    visit '/users/sign_in'
    click_link 'ゲストログイン'
    visit '/'
    expect(current_path).to eq root_path
  end

  it 'ユーザーアカウントがない場合ログインできない' do
    visit '/users/sign_in'
    fill_in 'user[email]',         with: 'tester'
    fill_in 'user[password]',    with: 'password'
    click_button 'ログイン'
    expect(current_path).to eq new_user_session_path
  end

  it 'ユーザーアカウントがある場合ログインできる' do
    visit '/users/sign_up'
    fill_in 'user[name]',         with: 'tester'
    fill_in 'user[email]',  with: 'tester@sample.com'
    fill_in 'user[password]',    with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    click_button '新規登録'
    expect(page).to have_content "アカウント登録が完了しました。"
    expect(current_path).to eq root_path
  end
end