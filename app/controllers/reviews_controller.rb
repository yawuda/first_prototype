class ReviewsController < ApplicationController
    # def new
    #   @vin = Vin.find(params[:vin_id])
    #   @vin = Vin.new
    # end

  def create
    @vin = Vin.find(params[:vin_id])
    @review = Review.new(review_params)
    @review.vin = @vin
      if @review.save!
          # redirect_to vin_path(@vin)
           respond_to do |format|
          format.html { redirect_to vin_path(@vin) }
          format.js
        end
      else
        respond_to do |format|
        format.html { render 'vins/show' }
        format.js
      end
    end
  end
  def destroy
    @vin = Vin.find(params[:vin_id])
    @review = Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html { redirect_to vin_path(@vin), notice: 'Review was successfully destroyed.' }

    end
  end

private

  def review_params
    params.require(:review).permit(:content)
  end
end
