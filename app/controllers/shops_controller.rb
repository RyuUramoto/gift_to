class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]
  before_action :check_conditions, only: [:index]
  before_action :set_params, only: [:index]
  # GET /shops
  # GET /shops.json
  def index
    category_filter
    situation_filter
    @shops = @shops.get_matching_shops
  end

  # GET /shops/1
  # GET /shops/1.json
  def show
  end

  # GET /shops/new
  def new
    @shop = Shop.new
  end

  # GET /shops/1/edit
  def edit
  end

  # POST /shops
  # POST /shops.json
  def create
    @shop = Shop.new(shop_params)

    respond_to do |format|
      if @shop.save
        format.html { redirect_to @shop, notice: 'Shop was successfully created.' }
        format.json { render :show, status: :created, location: @shop }
      else
        format.html { render :new }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
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
  end

  def set_params
    @shops = Shop.new
    @shops.set_category(params[:shop][:category])
    @shops.set_situation(params[:shop][:situation])
  end


  def check_conditions
    redirect_to(root_path) if params[:shop].fetch(:situation) == "false" && !params[:shop].include?(:category)
  end

  def category_filter
    @shops.filter_category if params[:shop].include?(:category)
  end

  def situation_filter
    @shops.filter_situation unless params[:shop].has_value?("false")
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def shop_params
    params.require(:shop).permit(:name, :image_path, :address, :tel, :abstract, :store_hours, :category, :situation)
  end
end
