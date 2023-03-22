class MapController < ApplicationController
  before_action :authenticate_user

  def home
    @maps = Map.where(user_id: @current_user.id).order(s_dis: :asc)
  end

  def new
    params.each do |key, val|
      @map = Map.find_by(user_id: @current_user.id, s_dis: key.to_i)
      if @map
        if val=="on"
          @map.status = 1
        else
          @map.status = 0
        end
        @map.save
      end
    end
    redirect_to('/map')
  end
end
