class PagesController < ApplicationController
  expose(:blogs) { Blog.order("created_at desc").limit(3) }
end
