class SessionsController < ApplicationController
    def new 
    end

    def create
        name = params[:name]
        if name.blank?
            redirect_to controller: 'sessions', action: 'new'
        else
            session[:name] = name  
        end 
    end



    def destroy
        session[:name] = nil
        redirect_to controller: 'application', action: 'hello'
    end
end
