
class Doctor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(date, patient)
        appointment = Appointment.new(date, patient, self)

    end

    def patients
        patients = []
        self.appointments.each do |appointment|
        patient = appointment.patient
        patients << patient
        end
        patients
        # Appointment.all.collect {||}

    end





end