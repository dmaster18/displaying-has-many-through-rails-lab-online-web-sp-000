class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  
  def convert_time
    time = self.appointment_datetime
    month = time.month
    day = time.day
    year = time.year
  end
end
