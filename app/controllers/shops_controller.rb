class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :update, :destroy]
  before_action :permit_params, only: [:index]
  before_action :check_conditions, only: [:index]
  before_action :set_params, only: [:index]
  # GET /shops
  # GET /shops.json
  def index
    conditions_filter
    @shops.filter_area
    @found_shops = @shops.set_matching_shops
    @message = "条件に合うお店がありませんでした" if @found_shops.empty?
    @hash = @shops.get_markers(@found_shops)
  end

  # GET /shops/1
  # GET /shops/1.json
  def show
  end

  # PATCH/PUT /shops/1
  # PATCH/PUT /shops/1.json
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        format.html { redirect_to @shop, notice: 'Shop was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop }
      else
        format.html { render :edit }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shops/1
  # DELETE /shops/1.json
  def destroy
    @shop.destroy
    respond_to do |format|
      format.html { redirect_to shops_url, notice: 'Shop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_shop
    @shop = Shop.find(params[:id])
    @hash = Shop.new.get_markers(@shop)
  end

  def set_params
    @shops = Shop.new
    @shops.set_params(params)
  end

  def check_conditions
    redirect_to(root_path) if !params[:top].include?(:category)
  end

  def conditions_filter
    @shops.filter_category
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def permit_params
    params.require(:top).permit(:category, :area)
  end
end
