class PostController < ApplicationController
  get '/post/:id' do
    begin
      @post = Post.find(params[:id])
      erb :post, :layout => :base
    rescue => Mongoid::Errors::DocumentNotFound
      halt 404, '404 página não encontrada!'
    end
  end

  get '/post/:id/deletar' do
    Post.where(_id: params[:id]).delete
    redirect to '/'
  end
end