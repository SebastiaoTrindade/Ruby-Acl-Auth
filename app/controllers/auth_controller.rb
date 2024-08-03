class AuthController < ApplicationController
    def new
        render "new"
    end

    def create
        @user = User.find_by(email: params[:auth][:email])

        if @user && @user.authenticate(params[:auth][:password])
            login @user
            redirect_to @user
        else
            render "new"
        end
    end
end
