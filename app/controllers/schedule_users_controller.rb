class ScheduleUserController < ApplicationController
  def new
    @schedule = Schedule.new
  end

  def create
    schedule_user = ScheduleUser.new(schedule_user_params)
    schedule_user.save!
    redirect_to schedules_url
  end

  private
  def schedule_user_params
    params.require(:schedule_user).permit(:status, :reason)
  end
end
