class BlogPostsController < ApplicationController
    def index
        @blog_posts=BlogPost.all
    end
    def show 
        @blog_post = BlogPost.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
    end
    def new
        @blog_post = BlogPost.new
    end 
    def create
        @blog_post= BlogPost.new(params[:blog_post])
        @blog_post.save
    end
end