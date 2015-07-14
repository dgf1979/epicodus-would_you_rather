class ChoicesController < ApplicationController
  before_action :set_choice, only: [:show, :edit, :update, :destroy]

  # GET /choices
  # GET /choices.json
  def index
    @new_comment = Comment.new
    @choices = Choice.all
  end

  # GET /choices/1
  # GET /choices/1.json
  def show
    @new_comment = Comment.new
  end

  # GET /choices/new
  def new
    @choice = Choice.new
  end

  # GET /choices/1/edit
  def edit
  end

  # POST /choices
  # POST /choices.json
  def create
    @choice = Choice.new(choice_params)

    respond_to do |format|
      if @choice.save
        format.html { redirect_to @choice, notice: 'Choice was successfully created.' }
        format.json { render :show, status: :created, location: @choice }
        format.js
      else
        format.html { render :new }
        format.json { render json: @choice.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /choices/1
  # PATCH/PUT /choices/1.json
  def update

    params[:choice][:option_a_votes] = @choice.option_a_votes + params[:choice][:option_a_votes].to_i
    params[:choice][:option_b_votes] = @choice.option_b_votes + params[:choice][:option_b_votes].to_i

    respond_to do |format|
      if @choice.update(choice_params)
        format.html { redirect_to @choice, notice: 'Choice was successfully updated.' }
        format.json { render :show, status: :ok, location: @choice }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @choice.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /choices/1
  # DELETE /choices/1.json
  def destroy
    @choice.destroy
    respond_to do |format|
      format.html { redirect_to choices_url, notice: 'Choice was successfully destroyed.' }
      format.json { head :no_content }
      format.js { redirect_to choices_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choice
      @choice = Choice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_params
      params.require(:choice).permit(:option, :option_a, :option_b, :option_a_image, :option_b_image, :option_a_votes, :option_b_votes)
    end
end
