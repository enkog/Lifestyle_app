class CommentsController < ApplicationController
  before_action :require_user

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.user = current_user

    if @comment.save
      redirect_to root_path, notice: 'Comment was successfully created.'
    else
      redirect_to 'new', alert: @comment.errors.full_messages.join('. ').to_s
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
