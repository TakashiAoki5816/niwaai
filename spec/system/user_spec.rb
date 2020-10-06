require "rails_helper"

RSpec.describe 'Users', type: :system, js: true do
  it 'ゲストユーザーでログインできる' do
    visit '/users/sign_in'
    click_link 'ゲストログイン'
    visit '/'
    expect(current_path).to eq root_path
  end
end