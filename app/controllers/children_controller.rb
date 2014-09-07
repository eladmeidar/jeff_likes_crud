class ChildrenController < ApplicationController

  respond_to :json, :xml, :html

  skip_before_filter :verify_authenticity_token

  # GET /children
  def index
    respond_with(Child.all)
  end

  # GET /children/new
  def new
  end

  # POST /children
  def create
    @child = Child.new(child_params)
    @child.save
    respond_with(@child)
  end

  # GET /children/1/edit
  def edit
  end

  # PATCH /children/1
  def update
  end

  # GET /children/1
  def show
  end

  # DELETE /children
  def destroy
  end


  # Strong Parameters - elad hates it, it's ugly and stupid
  def child_params
    params.require(:child).permit(:name, :age)
  end

end
