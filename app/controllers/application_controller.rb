class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :page

    def page
        @q = Register.ransack(params[:q])
    end

    def after_sign_in_path_for(resource)
        top_page_path
    end

    def after_update_path_for(resource)
        users_show_path(current_user)
    end

    def after_sign_out_path_for(resource)
        top_page_path
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image])
    end
    
end
