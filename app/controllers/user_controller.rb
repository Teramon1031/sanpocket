class UserController < ApplicationController
    def home
        authenticate_user
    end

    def editName
        authenticate_user
        @current_user.name = params[:name]
        if !@current_user.save
            # flash[:notice]="Failed to change your name."
        end
        redirect_to('/user')
    end

    def editPW
        authenticate_user
        if @current_user.authenticate(params[:current_password])
            @current_user.password = params[:new_password]
        end
        if @current_user.save
            # flash[:notice]="Succeeded in changing your password!"
        else
            # flash[:notice]="Failed to change your password."
            puts @current_user.errors.full_messages
        end
        redirect_to('/user')
    end

    def login
        if session[:user_id]
            redirect_to('/map')
        end
    end

    def loginnow
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            # flash[:notice]='Login Succeeded'
            session[:user_id] = user.id
            set_current_user
            redirect_to('/map')
        else
            # flash[:notice]='Login Failed'
            @email = params[:email]
            @password = params[:password]
            render('user/login')
        end
    end

    def signup 
       if session[:user_id]
            redirect_to('/map')
        end
    end

    def signupnow
        user = User.new(name: params[:name], email: params[:email],password: params[:password])
        if user.save
            # flash[:notice]='Signup Succeeded'
            24.times do |i| 
                Map.create(user_id: user.id, s_dis: i+1, status: 0)
            end
            session[:user_id] = user.id
            set_current_user
            redirect_to('/map')
        else
            flash[:notice] = user.errors.full_messages
            @name = params[:name]
            @email = params[:email]
            @password = params[:password]
            render('user/signup')
        end
    end

    def logout
        session[:user_id] = nil
        redirect_to('/')
    end

 
end
