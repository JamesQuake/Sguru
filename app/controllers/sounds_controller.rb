class SoundsController < ApplicationController


  def index
    @sounds = Sound.all
  end

  def show
    @sound = Sound.find(params[:id])
  end

  def new
    @sound = Sound.new
    @synths = Synth.select(:id, :model)
  end

  def create
    @sound = Sound.new(sound_params)
    if @sound.save
      redirect_to sounds_path
    else
      render 'new'
    end
  end

  def sound_params
    params.require(:sound).permit(:synth_id, :audio_file)
  end
end
