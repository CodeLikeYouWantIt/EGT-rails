class Series
    class PostsController < ApplicationController

        def show
            posts = Series.find_by(id:params["id"].to_i).posts
            render json:posts
        end

    end
end