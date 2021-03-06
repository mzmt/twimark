class PostsController < ApplicationController
    before_action :authenticate_user,{only: [:index,:show,:edit,:update]}


  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
  	@post = Post.find_by(id: params[:id])
    @user = @post.user
  end

  def new
  	@post = Post.new
  end

  def create
    @post = Post.new(tweet_url: params[:url],
                    user_id: @current_user.id,
                      )
    	if @post.save
    		flash[:notice] = "ブクマしたよ～～∠( 'ω')/"
    		redirect_to("/posts/index")
    	else
    		render('posts/new')
  		end
  	end
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end



end
