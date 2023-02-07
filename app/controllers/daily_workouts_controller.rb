class DailyWorkoutsController < ApplicationController
  def new
    @dailyWorkout = DailyWorkout.new
    @dailyWorkout.lifts.build
  end

  def create
    @dailyWorkout = DailyWorkout.create(daily_workout_params)
    if @dailyWorkout.save
      flash[:success] = "New Daily_Workout created successfuly!"
      redirect_to root_path
    else
      # flash[:error] = "Something went wrong"
      render :new
    end
  end

  private

  def daily_workout_params
    # params.require(:daily_workout).permit(:focus, lifts_attributes: %i[name sets reps])
    params.require(:daily_workout).permit(:focus, lifts_attributes: [:name, :sets, :reps])
  end
end
