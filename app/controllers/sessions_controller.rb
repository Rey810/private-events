class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by('name=?', params[:sessions][:name])
        unless @user.nil?
            login @user
            redirect_to @user and return
        end
        render 'new'
    end

    def destroy
        logout @user if logged_in?
        redirect_to login_path
    end
end
