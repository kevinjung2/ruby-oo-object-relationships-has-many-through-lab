class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appt| appt.doctor == self }
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.collect { |appt| appt.patient }.uniq
  end
end
