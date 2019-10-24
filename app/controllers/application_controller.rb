class ApplicationController < ActionController::Base
  before_action :set_variables, :authenticate_user!

  def set_variables
    @all_categories = Category.all
    @user = current_user
    @time_now = Time.now
  end
end
