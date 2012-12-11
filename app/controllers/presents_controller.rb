class PresentsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @presents = Present.where(user_id: current_user)
  end

  def new
    @present = Present.new
  end

  def create
    @present = current_user.presents.create!(params[:present])
    respond_to do |format|
      format.html { redirect_to presents_url }
      format.js
    end
  end
end
