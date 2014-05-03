class UsersController < ApplicationController
  skip_before_filter :has_role?, only: [:show_role, :update_role]

  def show_role
  end

  def update_role
    if current_user.update(role: params[:role])
      flash[:notice] = "Saved role"
      redirect_to :root
    else
      flash[:notice] = "Failed to save role"
      redirect_to request.referrer
    end

  end

end
