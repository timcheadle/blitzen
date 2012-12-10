class PresentsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @presents = Present.where(user_id: current_user)
  end
end
