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

    if hour == 13
      hour = 1
    elsif hour == 14
      hour = 2
    elsif hour == 15
      hour = 3
    elsif hour == 16
      hour = 4
    elsif hour == 17
      hour = 5
    elsif hour == 18
      hour = 6
    elsif hour == 19
      hour = 7
    elsif hour == 20
      hour = 8
    elsif hour == 21
      hour = 9
    elsif hour == 22
      hour = 10
    elsif hour == 23
      hour = 11
    end

    if min == 0
      min = "00"
    end  

    "#{month_name} #{day}, #{year} at #{hour}:#{min}"
  end

end
