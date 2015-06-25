class ProductOwnersController < ApplicationController
  before_action :set_product_owner, only: [:show, :edit, :update, :destroy]

  # GET /product_owners
  # GET /product_owners.json
  def index
    @product_owners = ProductOwner.all
  end

  # GET /product_owners/1
  # GET /product_owners/1.json
  def show
  end

  # GET /product_owners/new
  def new
    @product_owner = ProductOwner.new
  end

  # GET /product_owners/1/edit
  def edit
  end

  # POST /product_owners
  # POST /product_owners.json
  def create
    @product_owner = ProductOwner.new(product_owner_params)

    respond_to do |format|
      if @product_owner.save
        format.html { redirect_to @product_owner, notice: 'Product owner was successfully created.' }
        format.json { render :show, status: :created, location: @product_owner }
      else
        format.html { render :new }
        format.json { render json: @product_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_owners/1
  # PATCH/PUT /product_owners/1.json
  def update
    respond_to do |format|
      if @product_owner.update(product_owner_params)
        format.html { redirect_to @product_owner, notice: 'Product owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_owner }
      else
        format.html { render :edit }
        format.json { render json: @product_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_owners/1
  # DELETE /product_owners/1.json
  def destroy
    @product_owner.destroy
    respond_to do |format|
      format.html { redirect_to product_owners_url, notice: 'Product owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_owner
      @product_owner = ProductOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_owner_params
      params[:product_owner]
    end
end
