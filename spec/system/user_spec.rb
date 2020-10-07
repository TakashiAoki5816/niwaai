require "rails_helper"

RSpec.describe 'Users', type: :system, js: true do
  it 'ゲストユーザーとしてログインできる' do
    visit '/users/sign_in'
    click_link 'ゲストログイン'
    visit '/'
    expect(current_path).to eq root_path
  end

  it 'ユーザーの新規登録ができる' do
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