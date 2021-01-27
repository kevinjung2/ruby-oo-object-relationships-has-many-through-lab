require 'pry'

class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end

  def doctors
    self.appointments.collect { |appt| appt.doctor }.uniq
  end
end
