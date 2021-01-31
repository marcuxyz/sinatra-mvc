class HomeController < ApplicationController
  get '/' do
    @posts = Post.all
    erb :index, :layout => :base
  end
end 