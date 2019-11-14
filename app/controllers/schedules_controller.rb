class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def create
    schedule = Schedule.new(schedule_params)
    schedule.save!
    redirect_to schedules_url
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def schedule_params
    params.require(:schedule).permit(:agenda, :date)
  end
end
