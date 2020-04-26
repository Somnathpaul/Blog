class PostsController < ApplicationController
    def Index
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post
        else
            ender new
        end
        
    end

    private 

    def post_params
        params.require(:post).permit(:title, :content)
    end
end
