class Comment < ActiveRecord::Base
  belongs_to :synth
  belongs_to :user
end
