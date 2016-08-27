class Patient < ActiveRecord::Base
  belongs_to :doctor
  has_many :a1cs
  has_many :phq9s
  has_many :bloodpressures
  has_many :notes

  scope :byDoctor, -> (id){ where(doctor_id: id) }

end
