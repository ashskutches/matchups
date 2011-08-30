class BlogsController < ApplicationController
  expose(:blog)
  expose(:blogs) { Blog.order("created_at desc").limit(10) }

  def create
    if blog.save
      redirect_to blog, :notice => 'Blog was successfully created.'
    else
      render :action => "new", :notice => blog.errors
    end
  end

  def update
    if blog.update_attributes(params[:blog])
      flash[:success] = 'Blog updated'
      redirect_to blog_path(blog)
    else
      render :action => "edit"
    end
  end

  def destroy
    blog.destroy
    redirect_to :back
  end
end
