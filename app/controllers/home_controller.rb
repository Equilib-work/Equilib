class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def wallet
    @new_variable = "Sandesh" 
    Task
  end

end
