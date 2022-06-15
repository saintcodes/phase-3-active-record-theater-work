class Audition < ActiveRecord::Base
  belongs_to :role

  # def role
  #   self.role
  # end

  def call_back
    self.hired = true
    # ^this code updates but does not save
    self.update(hired: true)
    # ^this updates and saves
  end

end 