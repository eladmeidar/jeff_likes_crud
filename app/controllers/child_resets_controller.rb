class ChildResetsController < ApplicationController

  respond_to :json, :xml

  skip_before_filter :verify_authenticity_token
  
  def update
    @child = Child.find(params[:id])
    @child.update_attribute(:age, 0)
    respond_with(@child)
  end

end
