class CartsController < ApplicationController

	before_action :authenticate_user!

  def index
    @cart = current_user.carts.last

    if @cart.nil?
      @cart = current_user.carts.create
    end

    @cart_items = @cart.cart_items
  end

  def add
    @cart = current_user.carts.last

    if @cart.nil?
      @cart = current_user.carts.create
    end

    @cart.cart_items.create(product_id: params[:product]) unless @cart.has_product?(params[:product])

    redirect_to '/cart'
  end

  private

  def product
    Product.find(params[:product])
  end

end
