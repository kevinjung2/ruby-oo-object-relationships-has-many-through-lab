class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    self.date = date
    self.doctor = doctor
    self.patient = patient
    self.class.all << self
  end

  def self.all
    @@all
  end
end
