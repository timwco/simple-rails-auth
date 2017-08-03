class DashboardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = current_user
    render "index.json.jbuilder"
  end

end