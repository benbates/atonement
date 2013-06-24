class SinsController < ApplicationController
  # GET /sins
  # GET /sins.json
  def index
    @sins = Sin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sins }
    end
  end

  # GET /sins/1
  # GET /sins/1.json
  def show
    @sin = Sin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sin }
    end
  end

  # GET /sins/new
  # GET /sins/new.json
  def new
    @sin = Sin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sin }
    end
  end

  # GET /sins/1/edit
  def edit
    @sin = Sin.find(params[:id])
  end

  # POST /sins
  # POST /sins.json
  def create
    @sin = Sin.new(params[:sin])

    respond_to do |format|
      if @sin.save
        format.html { redirect_to @sin, notice: 'Sin was successfully created.' }
        format.json { render json: @sin, status: :created, location: @sin }
      else
        format.html { render action: "new" }
        format.json { render json: @sin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sins/1
  # PUT /sins/1.json
  def update
    @sin = Sin.find(params[:id])

    respond_to do |format|
      if @sin.update_attributes(params[:sin])
        format.html { redirect_to @sin, notice: 'Sin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sins/1
  # DELETE /sins/1.json
  def destroy
    @sin = Sin.find(params[:id])
    @sin.destroy

    respond_to do |format|
      format.html { redirect_to sins_url }
      format.json { head :no_content }
    end
  end
end
