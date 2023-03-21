class MapController < ApplicationController
  def home
    @maps = Map.where(user_id: 1).order(s_dis: :asc)
  end

  def new
    puts "-------------------------------#{params}-----------------"
    params.each do |key, val|
      @map = Map.find_by(user_id: 1, s_dis: key.to_i)
      if @map
        puts "val is :#{val}-------------------"
        puts "map is :#{@map}--#{@map.s_dis}------------------"
        if val=="on"
          @map.status = 1
        else
          @map.status = 0
        end
        if @map.save
          puts "map is :#{@map}--#{@map.status}------------------"
          puts "saved!"
        end
      end
    end
    redirect_to('/map')
  end
end
