class FlossesController < ApplicationController
  # GET /flosses
  # GET /flosses.json
  def index
    @flosses = Floss.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flosses }
    end
  end

  # GET /flosses/1
  # GET /flosses/1.json
  def show
    @floss = Floss.find(params[:id])
    @user = User.where("id = ?", @floss.user).first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @floss }
    end
  end

  # GET /flosses/new
  # GET /flosses/new.json
  def new
    @floss = Floss.new
    @floss.user = current_user.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @floss }
    end
  end

  # GET /flosses/1/edit
  def edit
    @floss = Floss.find(params[:id])
  end

  # POST /flosses
  # POST /flosses.json
  def create
    @floss = Floss.new(params[:floss])

    respond_to do |format|
      if @floss.save
        format.html { redirect_to @floss}
        format.json { render json: @floss, status: :created, location: @floss }
      else
        format.html { render action: "new" }
        format.json { render json: @floss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flosses/1
  # PUT /flosses/1.json
  def update
    @floss = Floss.find(params[:id])

    respond_to do |format|
      if @floss.update_attributes(params[:floss])
        format.html { redirect_to @floss, notice: 'Floss was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @floss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flosses/1
  # DELETE /flosses/1.json
  def destroy
    @floss = Floss.find(params[:id])
    @floss.destroy

    respond_to do |format|
      format.html { redirect_to flosses_url }
      format.json { head :no_content }
    end
  end
end
