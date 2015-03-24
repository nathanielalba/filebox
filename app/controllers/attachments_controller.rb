class AttachmentsController < ApplicationController

	def search
    if params[:search].present?
  		@files = Attachment.search(params[:search])
  	else
      @files = Attachment.all
  	end
  end

  def index
  	@files = Attachment.all
  	@my_files = current_user.attachments if user_signed_in?
  end

  def new
  	@file = Attachment.new
  end

  def show
  end

  def create
  	@user = current_user
  	@file = @user.attachments.build(file_params)

  	if @file.save
  		flash[:notice] = "File was uploaded"
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def destroy
  	@file = Attachment.find(params[:id])
  	@file.destroy

  	flash[:alert] = "File was successfully deleted"
  	redirect_to root_url
  end

  private

  	def file_params
  		params.require(:attachment).permit(:name, :attachment)
  	end
end
