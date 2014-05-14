class SynthsController < ApplicationController

  def index 
    @synths = Synth.all
  end

  def show
    @synth = Synth.find(params[:id])
  end

  def new
    @synth = Synth.new
  end

  def create
    @synth = Synth.new(synth_params)
    if @synth.save
      redirect_to synths_path
    else
      render 'new'
    end
  end

  def synth_params
    params.require(:synth).permit(:manufacturer, :summary, :modification, :model)
  end

end
