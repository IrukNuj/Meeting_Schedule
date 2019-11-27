class Api::V1::SchedulesController < ApplicationController
  def index
    schedules = Schedule.order(date: :desc)
    render json: schedules
  end

  def show
    schedule = Schedule.find(params[:id])
    render json: schedule
  end

  def create
    schedule = Schedule.new(schedule_params)
    if schedule.save
      render status: :created, json: { code: 201, message: 'Created' }
    else
      render status: 400, json: { code: 400, message: schedule.errors }
    end
  end

  def update
    schedule = Schedule.find(params[:id])
    schedule.update(agenda: params[:agenda])
    render status: :created, json: { code: 200, message: 'Succeed' }
  end

  def destroy
    schedule = Schedule.find(id)
    schedule.destroy
    render status: :created, json: { code: 200, message: 'Succeed' }
  end

  private

  def schedule_params
    params.require(:schedule).permit(:date, :agenda)
  end
end
