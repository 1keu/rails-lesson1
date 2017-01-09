class TweetsController < ApplicationController
    
    before_action :move_to_index, except: :index
    
    def index
        @tweet =Tweet.all.order("id DESC")
    end
    
    def new
        
    end
    
    def create
        Tweet.create(tweet_params)
        binding.pry
    end
    private
    def tweet_params
        params.permit(:name, :image, :text)
    end
    
    def move_to_index
        
        unless user_signed_in?
        redirect_to action: :index 
        end
        
    end
end
