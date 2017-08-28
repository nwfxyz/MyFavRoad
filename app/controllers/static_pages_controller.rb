class StaticPagesController < ApplicationController
    
    def home
    end

    def camera
        puts params[:static_pages]
        @cam = params[:static_pages][:camera]
        
        
        
        
    end
    
    

end
