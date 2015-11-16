class PhotosController < ApplicationController
   
   before_action :require_user, only: [:index]
   
   def index
      @user = User.find(session[:user_id])	 
      @photos = @user.photos	 
   end
   
   def show
     
   end
   
end
