class ScientistExperiementsController < ApplicationController
  def destroy
    @scientist = Scientist.find(params[:scientist_id])
    @experiment = @scientist.experiments.find(params[:id])
    @scientist.experiments.delete(@experiment)
    redirect_to scientist_path(@scientist)
    # require 'pry'; binding.pry
  end
end