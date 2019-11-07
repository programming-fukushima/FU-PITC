class ProfilesController < ApplicationController
    #before_action :login_required

    def index
        @profiles = Profile.order("id")
    end
    
    def show
        @profile = Profile.find(params[:id])
    end

    def new
    end

    def edit
    end

    def create
    end

    def update
    end

    def destroy
    end

    def search
        @profiles = Profile.search(params[:q])
        render "index"
    end 
end