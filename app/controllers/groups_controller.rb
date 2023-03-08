class GroupsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @book = Book.new
    @groups = Group.all
  end
  
  
  
  def new
    @group = Group.new
  end
  
  def create
      @group = Group.new(group_params)
      @group.owner_id = current_user.id
    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end
 
  private
 
  def group_params
   params.require(:group).permit(:name,:introduction,:image)
  end
end
 
 