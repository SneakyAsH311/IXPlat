class CommentsController < ApplicationController
	def create
    @forum = Forum.find(params[:forum_id])
    @comment = @forum.comments.create(comment_params)
     @job = Job.find(params[:job_id])
    @comment = @job.comments.create(comment_params)
    @comment.save
    redirect_to forum_path(@forum)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
