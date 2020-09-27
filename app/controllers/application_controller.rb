class ApplicationController < ActionController::Base
before_action :set_search
before_action :configure_permitted_parameters, if: :devise_controller?
def set_search
	@search = Gym.ransack(params[:q])
	@search_gyms = @search.result.page(params[:page])
end

protected
def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
end

end
