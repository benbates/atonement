class SinTypesController < ApplicationController
  # GET /sin_types
  # GET /sin_types.json
  def index
    @sin_types = SinType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sin_types }
    end
  end

  # GET /sin_types/1
  # GET /sin_types/1.json
  def show
    @sin_type = SinType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sin_type }
    end
  end

  # GET /sin_types/new
  # GET /sin_types/new.json
  def new
    @sin_type = SinType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sin_type }
    end
  end

  # GET /sin_types/1/edit
  def edit
    @sin_type = SinType.find(params[:id])
  end

  # POST /sin_types
  # POST /sin_types.json
  def create
    @sin_type = SinType.new(params[:sin_type])

    respond_to do |format|
      if @sin_type.save
        format.html { redirect_to @sin_type, notice: 'Sin type was successfully created.' }
        format.json { render json: @sin_type, status: :created, location: @sin_type }
      else
        format.html { render action: "new" }
        format.json { render json: @sin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sin_types/1
  # PUT /sin_types/1.json
  def update
    @sin_type = SinType.find(params[:id])

    respond_to do |format|
      if @sin_type.update_attributes(params[:sin_type])
        format.html { redirect_to @sin_type, notice: 'Sin type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sin_types/1
  # DELETE /sin_types/1.json
  def destroy
    @sin_type = SinType.find(params[:id])
    @sin_type.destroy

    respond_to do |format|
      format.html { redirect_to sin_types_url }
      format.json { head :no_content }
    end
  end
end
