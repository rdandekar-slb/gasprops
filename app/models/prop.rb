class Prop < ApplicationRecord
  belongs_to :gas

  def getzfactor
    @zfactor=99.999
  end
end
