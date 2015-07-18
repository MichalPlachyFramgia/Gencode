class Admin::AttributesController < ApplicationController
  before_action :attribute_params, only: [:create, :update]

  def index
    @properties = Attribute.all
  end

  def show
    current_attribute
  end

  def new
    @attribute = Attribute.new
    @types = Type.all
  end

  def create
    @attribute = Attribute.new attribute_params
    if @attribute.save
      redirect_to admin_root_url
    else
      render "new"
    end
  end

  def edit
    @attribute = Attribute.find params[:id]
    @types = Type.all
  end

  def update
    @attribute = Attribute.find params[:id]
    if @attribute.update_attributes attribute_params
      redirect_to admin_root_url
    else
      render "edit"
    end
  end

  def destroy
    @attribute = Attribute.find params[:id]
    @attribute.destroy
    redirect_to admin_root_url
  end

  private
  def current_attribute
    @attribute = Attribute.find params[:id]
  end

  def attribute_params
    params.require(:attribute).permit :name
  end
end
