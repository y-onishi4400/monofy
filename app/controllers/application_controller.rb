class ApplicationController < ActionController::Base

  # 未ログイン時、ログインページへリダイレクト
	# before_action :authenticate_user!
	# before_filter :authenticate_person!

  # CSRF保護をオンにする以下の1行を有効にします。
  protect_from_forgery with: :exception
  # ログイン済ユーザーのみにアクセスを許可する
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def login_required
    raise Forbidden unless current_user
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :userinfo_attributes => [:user_id, :name, :site_id, :profile, :image, :image_cache]
    ])
    devise_parameter_sanitizer.permit(:account_update, keys: [
      :userinfo_attributes => [:user_id, :name, :site_id, :profile, :image, :image_cache]
    ])
  end

end
