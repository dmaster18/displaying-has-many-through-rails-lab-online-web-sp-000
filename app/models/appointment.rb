class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  
  def convert_time
end
