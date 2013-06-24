class ReminderPhrasesController < ApplicationController
  # GET /reminder_phrases
  # GET /reminder_phrases.json
  def index
    @reminder_phrases = ReminderPhrase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reminder_phrases }
    end
  end

  # GET /reminder_phrases/1
  # GET /reminder_phrases/1.json
  def show
    @reminder_phrase = ReminderPhrase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reminder_phrase }
    end
  end

  # GET /reminder_phrases/new
  # GET /reminder_phrases/new.json
  def new
    @reminder_phrase = ReminderPhrase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reminder_phrase }
    end
  end

  # GET /reminder_phrases/1/edit
  def edit
    @reminder_phrase = ReminderPhrase.find(params[:id])
  end

  # POST /reminder_phrases
  # POST /reminder_phrases.json
  def create
    @reminder_phrase = ReminderPhrase.new(params[:reminder_phrase])

    respond_to do |format|
      if @reminder_phrase.save
        format.html { redirect_to @reminder_phrase, notice: 'Reminder phrase was successfully created.' }
        format.json { render json: @reminder_phrase, status: :created, location: @reminder_phrase }
      else
        format.html { render action: "new" }
        format.json { render json: @reminder_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reminder_phrases/1
  # PUT /reminder_phrases/1.json
  def update
    @reminder_phrase = ReminderPhrase.find(params[:id])

    respond_to do |format|
      if @reminder_phrase.update_attributes(params[:reminder_phrase])
        format.html { redirect_to @reminder_phrase, notice: 'Reminder phrase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reminder_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reminder_phrases/1
  # DELETE /reminder_phrases/1.json
  def destroy
    @reminder_phrase = ReminderPhrase.find(params[:id])
    @reminder_phrase.destroy

    respond_to do |format|
      format.html { redirect_to reminder_phrases_url }
      format.json { head :no_content }
    end
  end
end
