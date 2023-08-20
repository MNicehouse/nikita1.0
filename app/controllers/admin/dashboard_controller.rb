class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end

end
