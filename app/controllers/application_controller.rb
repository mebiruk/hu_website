class ApplicationController < ActionController::Base
    
    protect_from_forgery with: :exception

    def access_denied(exception)
        rescue_from(CanCan::AccessDenied)
        puts "ever here"
        puts exception.to_s
        redirect_to admin_root_path, alert: exception.message
    end
end
