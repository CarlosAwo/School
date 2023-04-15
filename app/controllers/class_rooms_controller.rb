class ClassRoomsController < ApplicationController
  before_action :set_class_room, only: %i[ show edit update destroy ]

  def index
    @class_rooms = ClassRoom.all
  end

  def show
  end

  def new
    @class_room = ClassRoom.new
  end

  def edit
  end

  def create
    @class_room = ClassRoom.new(class_room_params)

      if @class_room.save
        redirect_to class_rooms_url, notice: "Class room was successfully created." 
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
      if @class_room.update(class_room_params)
        redirect_to class_rooms_url, notice: "Class room was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @class_room.destroy
      redirect_to class_rooms_url, notice: "Class room was successfully destroyed." 
  end

  private
    def set_class_room
      @class_room = ClassRoom.find(params[:id])
    end

    def class_room_params
      params.require(:class_room).permit(:name, :capacity)
    end
end
