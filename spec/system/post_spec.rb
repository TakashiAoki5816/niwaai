require "rails_helper"

RSpec.describe '新規投稿', type: :system, js: true do
  before do
    @user = create(:user)
    visit '/users/sign_in'
    fill_in('user[email]', with: 'test@example.com')
    fill_in('user[password]', with: '00000000')
    click_button 'ログイン'
  end

  context '投稿ができる時' do
    it 'ログインしているユーザーは投稿できる' do
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

  context '投稿できない時' do
    it 'ログインしていないユーザーは投稿できない' do
      visit '/'
      find('.logout').click
      visit new_post_path
      expect(page).to have_content "アカウント登録もしくはログインしてください。"
    end
  end
end

RSpec.describe "投稿の編集", type: :system do
  before do
    @user = create(:user)
    @post = create(:post, user_id: @user.id)
  end

  context '投稿の編集ができる時' do
    it 'ログインしたユーザーは自分の投稿の編集ができる' do
      visit '/users/sign_in'
      fill_in('user[email]', with: 'test@example.com')
      fill_in('user[password]', with: '00000000')
      click_button 'ログイン'
      visit edit_post_path(@post)
      fill_in 'post[garden_name]', with: '六義園'
      fill_in 'post[address]', with: '東京都文京区本駒込6丁目16-3'
      fill_in 'post[title]', with: '門の前にて'
      attach_file "post[image]", "spec/image/test_image.jpg"
      fill_in 'post[content]', with: '雨が降った時の六義園はとても幻想的です'
      click_button '編集する'
      expect(page).to have_content "投稿を編集しました。"
      expect(current_path).to eq post_path(@post)
    end
  end

  # context '投稿の編集ができない時' do
  #   it '自分以外の投稿の編集ページに遷移できない' do
  #     visit post_path(@post2)
  #     expect(page).to have_no_content("編集")
  #   end
  # end

end