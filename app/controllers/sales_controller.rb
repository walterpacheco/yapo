class SalesController < ApplicationController
    def create
        @product=Produc.find(params[:product_id])
        Sale.create!({
            product_id:@product.id,
            user_id: current_user.id
        })
        @product.sold=true
        @product.save!
        redirect_to products_path
    end
end
