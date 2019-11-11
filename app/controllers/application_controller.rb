class ApplicationController < ActionController::API
    def login
        user = User.find_by(email: params[:email])
        render json: user
    end
end
