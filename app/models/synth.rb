class Synth < ActiveRecord::Base
  has_many :pictures
  has_many :sounds
end
