class MyHikesController < ApplicationController
  before_action :set_my_hike, only: [:show, :edit, :update, :destroy]

  def landingpage

  end 

  def filter

  end

  def search
    @my_hikes = MyHike.all(include: :parent)
  end

  def about

  end

  # GET /hike_mode/1
  # GET /hike_mode/1.json
  def hike_mode
    @my_hike = MyHike.find_by(id: params[:id])
    @map_url = @my_hike.map_url
  end

  # GET /my_hikes
  # GET /my_hikes.json
  def index
    @my_hikes = MyHike.all(include: :parent)
  end

  # GET /my_hikes/1
  # GET /my_hikes/1.json
  def show
    @my_hike = MyHike.find_by(id: params[:id])

    @map_url = @my_hike.map_url
    @district = District.find_by(id: @my_hike.parent_id)
  end

  # GET /my_hikes/new
  def new
    @my_hike = MyHike.new
  end

  # GET /my_hikes/1/edit
  def edit
  end

  # POST /my_hikes
  # POST /my_hikes.json
  def create
    @my_hike = MyHike.new(my_hike_params)

    respond_to do |format|
      if @my_hike.save
        format.html { redirect_to @my_hike, notice: 'My hike was successfully created.' }
        format.json { render action: 'show', status: :created, location: @my_hike }
      else
        format.html { render action: 'new' }
        format.json { render json: @my_hike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_hikes/1
  # PATCH/PUT /my_hikes/1.json
  def update
    respond_to do |format|
      if @my_hike.update(my_hike_params)
        format.html { redirect_to @my_hike, notice: 'My hike was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @my_hike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_hikes/1
  # DELETE /my_hikes/1.json
  def destroy
    @my_hike.destroy
    respond_to do |format|
      format.html { redirect_to my_hikes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_hike
      @my_hike = MyHike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_hike_params
      params.require(:my_hike).permit(:hike_name, :distance_in_km, :distance_category, :difficulty, :duration, :elevation_chart, :start_elevation, :max_elevation, :climb, :description, :parent_id, :trail, :hike_start, :hike_end)
    end
end
