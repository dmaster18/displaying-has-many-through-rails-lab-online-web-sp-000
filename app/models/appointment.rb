class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  
  def convert_time
    time = self.appointment_datetime
    month = time.month
  
  end
end
