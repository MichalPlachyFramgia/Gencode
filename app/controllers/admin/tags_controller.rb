class Admin::TagsController < ApplicationController
  before_action :tag_params, except: [:index, :new, :show, :edit, :destroy]

  def index
  	@tags = Tag.all
  end
  
  def show
  	current_tag
  end
  
  def new
  	@tag = Tag.new
  	@types = Type.all
  end
  
  def create
  	@tag = Tag.new tag_params
  	if @tag.save
  	  redirect_to admin_root_url
  	else
  	  render "new"
  	end
  end
  
  def edit
  	@tag = Tag.find params[:id]
  	@types = Type.all
  end
  
  def update
  	@tag = Tag.find params[:id]
  	if @tag.update_attributes tag_params
  	  redirect_to admin_root_url
  	else
  	  render "edit"
  	end
  end

  def destroy
  	@tag = Tag.find params[:id]
  	@tag.destroy
  	redirect_to admin_root_url
  end

  private
  def current_tag
  	@tag = Tag.find params[:id]
  end

  def tag_params
  	params.require(:tag).permit :name, :enclose, :type_id
  end
end