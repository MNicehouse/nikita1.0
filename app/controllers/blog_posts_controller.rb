class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
    # Add any other code to fetch and filter blog posts if needed
  end
end
