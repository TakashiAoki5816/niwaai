class Users::RegistrationsController < Devise::RegistrationsController
  before_action :check_guest, only: %i[update destroy]

  def check_guest
    if resource.email == 'guest@example.com'
      redirect_to user_path(@user), alert: 'ゲストユーザーは編集・削除できません。'
    end
  end

end