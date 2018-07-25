class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def index
  end

  def show
    @patient = Patient.find(params[:id])
  end

end
