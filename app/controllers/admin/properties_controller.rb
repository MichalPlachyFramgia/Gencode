class Admin::PropertiesController < ApplicationController
  before_action :property_params, only: [:create, :update]

  def index
    @properties = Property.all
  end

  def show
    current_property
  end

  def new
    @property = Property.new
    @types = Type.all
  end

  def create
    @property = Property.new property_params
    if @property.save
      redirect_to admin_root_url
    else
      render "new"
    end
  end

  def edit
    @property = Property.find params[:id]
    @types = Type.all
  end

  def update
    @property = Property.find params[:id]
    if @property.update_attributes property_params
      redirect_to admin_root_url
    else
      render "edit"
    end
  end

  def destroy
    @property = Property.find params[:id]
    @property.destroy
    redirect_to admin_root_url
  end

  private
  def current_property
    @property = Property.find params[:id]
  end

  def property_params
    params.require(:property).permit :name
  end
end
