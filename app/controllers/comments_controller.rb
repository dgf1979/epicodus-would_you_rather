class CommentsController < ApplicationController
  before_action :set_choice, only: [:show, :create]

  def create
    @comment = @choice.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to choices_path, notice: 'Comment was successfully created.' }
        format.js
      else
        format.html { redirect_to choices_path, notice: 'Comment creation failed.' }
        format.js
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_choice
    @choice = Choice.find(params[:choice_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:text)
  end
end
