# app/controllers/profiles_controller.rb
class ProfilesController < ApplicationController
#   skip_before_action :verify_authenticity_token

  def create
    profile = Profile.new(profile_params)
    p profile_params
    if profile.save
      render json: profile, status: :created
    else
      render json: profile.errors, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :job_title)
  end
end