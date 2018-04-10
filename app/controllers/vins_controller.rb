class VinsController < ApplicationController
before_action :set_vin, except: [:index, :new, :create]

  def index
    if params[:query].present?
      @vins = Vin.where("producteur ILIKE ?", "%#{params[:query]}%")
    else
      @vins = Vin.all
    end
  end

  def show


    @order_item = OrderItem.new
    @vin = Vin.find(params[:id])
    @new_review = Review.new

  end

  def edit
  end

  def new
    @vin = Vin.new
  end

  def create
    @vin = Vin.new(vin_params)
      if @vin.save
        redirect_to vins_path
      else
        render :new
      end
  end

  def update
      if @vin.update(vin_params)
        redirect_to @vin, notice: 'vin was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @vin.destroy
    redirect_to vins_path, notice: 'Vin was successfully destroyed.'
  end

private

  def set_vin
    @vin = Vin.find(params[:id])
  end

  def vin_params
    params.require(:vin).permit(:region, :appelation, :vignoble, :producteur, :alcool , :parker, :jrobinson, :prix_btl, :annee, :nb_btl_caisse, :description, :photo)
  end
end
