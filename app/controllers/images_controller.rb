class ImagesController < ApplicationController
  before_action :set_idea

  def create
    add_more_images(images_params[:images])
    flash[:error] = "Failed uploading images" unless @idea.save
    redirect_to :back
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting image" unless @idea.save
    redirect_to :back
  end

  private

  def set_idea
    @idea = Idea.find(params[:idea_id])
  end

  def add_more_images(new_images)
    images = @idea.images
    images += new_images
    @idea.images = images
  end

  def remove_image_at_index(index)
    remain_images = @idea.images # copy the array
    deleted_image = remain_images.delete_at(index) # delete the target image
    deleted_image.try(:remove!) # delete image from S3
    @idea.images = remain_images # re-assign back
  end

  def images_params
    params.require(:idea).permit({images: []}) # allow nested params as array
  end
end
