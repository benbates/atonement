require 'date'

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
    flash[:success] = "Binge successfully banked!"
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
    flash[:success] = "Binge successfully banked!"
 #   respond_to do |format|
 #     if @sin.save
 #       format.html { redirect_to @sin, notice: 'Binge was successfully banked!' }
 #       format.json { render json: @sin, status: :created, location: @sin }
 #     else
 #       format.html { render action: "new" }
 #       format.json { render json: @sin.errors, status: :unprocessable_entity }
 #     end
 #  end
  end

  # PUT /sins/1
  # PUT /sins/1.json
  def update
    @sin = Sin.find(params[:id])

    respond_to do |format|
      if @sin.update_attributes(params[:sin])
        format.html { redirect_to @sin, notice: 'Binge was successfully updated.' }
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

  def newSin
    
    # Create a new sin
    sin = Sin.new
    sin.reminder_time = Date.today + params['remindertime'].to_i
    sin.phone = params['phone']
    sin.quantity = params['quantity'].to_i
    sin.date = Date.today
    sintype = SinType.where(name: params['sin']).first;
    sin.sin_type_id = sintype.id

    # add 
    if(current_user)
      sin.user_id = current_user.id
      current_user.sins.push(sin)
      current_user.save
    end

    # Get the message
    num = params['phone']
    num = num.gsub(/[^0-9]/, "")
    redirect_to '/sendtext/' + num + '/' + URI.escape(sintype.phrase)
    flash[:success] = "Binge successfully banked!"

  end



end
