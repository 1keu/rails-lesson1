class TweetsController < ApplicationController
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
end
