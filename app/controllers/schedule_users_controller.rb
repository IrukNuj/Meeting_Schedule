class ScheduleUsersController < ApplicationController
  def new
    @schedule_user = ScheduleUser.new
  end

  def create
    schedule_user = ScheduleUser.new(schedule_user_params)
    schedule_user.user_id = current_user.id
    schedule_user.schedule_id = params[:id]
    schedule_user.save!
    redirect_to schedules_url
  end

  private
  def schedule_user_params
    params.require(:schedule_user).permit(:status, :reason)
  end
end
