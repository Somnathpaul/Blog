class CommentsController < ApplicationController
    def create
        @posts = Post.find(:post_id)
    end

    def destroy

    end
end
