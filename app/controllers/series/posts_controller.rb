class Series
    class PostsController < ApplicationController

    #localhost:3000/series
        def show
            posts = Series.find_by(id:params["id"].to_i).posts
            render json:posts
        end

    end
end