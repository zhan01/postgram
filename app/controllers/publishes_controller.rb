class PublishesController < ApplicationController
  before_action :set_publish, only: [:show, :edit, :search]
  def index
    @publishes = Publish.all
    if params[:search]
      @publish = Publish.search(params[:search]).order("created_at DESC")
    else
      @publishes = Publish.all.order('created_at DESC')
    end
    @users = User.all
    
  end
  

  def show
    @publish = Publish.find(params[:id])
  end

  def new
    @publish = Publish.new

  end

  def create
    @publish = Publish.new(user_params)
    @publish['user_id'] = current_user.id
    if @publish.save
    	flash[:success] ="Success!"
      redirect_to publish_path(@publish)
    else
      flash[:error] = @publish.errors.full_messages
      redirect_to new_publish_path
    end
  end
  def edit
    
  end

  private
  def set_publish
    @publish = Publish.find(params[:id])
  end

  def user_params
    params.require(:publish).permit(:description, :country, :image)
  end

end