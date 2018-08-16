class DosesController < ApplicationController

  def new
    @doses = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save!
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end
end
