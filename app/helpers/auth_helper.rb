module AuthHelper
    def login(user)
        session[:user] = @user.id
    end

end
