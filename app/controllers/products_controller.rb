class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.create(products_params)
  	redirect_to product_path(@product)
  end

  def show
  	@product = Product.find(params[:id])
  end

  def edit
  	@product = Product.find(params[:id])
  end
 
  def update
  	@product = Product.find(params[:id])
  	if @product.update(products_params)
  		redirect_to product_path(@product), notice: "El producto fue editado"
  	else 
  	  render :edit, notice: "El producto no puede ser editado" 
  	end
  end

  def destroy  
    product = Product.find(params[:id]).destroy
    product.destroy
    redirect_to products_path
  end

  def products_params
  	params.require(:product).permit(:name, :description, :price)
  end  
end
