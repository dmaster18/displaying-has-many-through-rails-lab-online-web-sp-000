class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end


  private

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor, :patient)
  end

end
