class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def convert_time
    time = self.appointment_datetime
    month = time.month
    day = time.day
    year = time.year
    hour = time.hour
    min = time.min
    month_name = ""

    if month == 1
      month_name = "January"
    elsif month == 2
      month_name = "February"
    elsif month == 3
      month_name = "March"
    elsif month == 4
      month_name = "April"
    elsif month == 5
      month_name = "May"
    elsif month == 6
      month_name =  "June"
    elsif month == 7
      month_name = "July"
    elsif month == 8
      month_name = "August"
    elsif month == 9
      month_name = "September"
    elsif month == 10
      month_name = "October"
    elsif month == 11
      month_name = "November"
    elsif month == 12
      month_name = "December"
    end


    if min == 0
      min = "00"
    end

    "#{month_name} #{day}, #{year} at #{hour}:#{min}"
  end

end
