require "rails_helper"

RSpec.describe 'Posts', type: :system, js: true do
  describe "投稿ページ" do
    before do
      visit '/users/sign_up'
      fill_in 'user[name]',         with: 'tester'
      fill_in 'user[email]',  with: 'tester@sample.com'
      fill_in 'user[password]',    with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
      click_button '新規登録'
    end

    it '新規投稿ができる' do
      visit '/posts/new'
      fill_in 'post[garden_name]', with: '清澄庭園'
      fill_in 'post[address]', with: '東京都江東区清澄3丁目3-9'
      fill_in 'post[title]', with: '池の周りにて'
      attach_file "post[image]", "spec/image/test_image.jpg"
      fill_in 'post[content]', with: '雨が降った時の清澄庭園はとても幻想的です'
      click_button '投稿する'
      expect(page).to have_content "投稿が作成されました。"
    end
  end
end