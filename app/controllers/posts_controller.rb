class PostsController < ApplicationController
    def create
       post =  Post.create(
            name:params['name'],
            body:params['body'],
            user_id:params['user_id'].to_i,
            series_id:params['series_id'].to_i
        )
        if post
            render json: "Success", status:200
        elsif !post
            render json: post, status:422
        end
    end
end