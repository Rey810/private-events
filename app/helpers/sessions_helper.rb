module SessionsHelper

    def login user
        cookies[:remember_name] = user.name
        @current_user = user
    end

    def logout user
        cookies[:remember_name] = nil
        @current_user = nil
    end

    def logged_in?
        !current_user.nil?
    end

    def current_user
        #if the current user is not set then set it equal to the user that is logged in
        current_cookie = cookies[:remember_name]
        @current_user ||= User.find_by('name=?', current_cookie)
    end
end
