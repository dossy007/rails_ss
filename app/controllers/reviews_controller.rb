class ReviewsController < ApplicationController
     layout 'review_site'

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to controller: :products,action: :index
    # reviews_controller.rbのcreateアクションでデータを受け取り、データベースに保存する処理を書いて下さい
    # トップページにリダイレクトする処理を書いて下さい
  end

  private
  def review_params
    params.require(:review).permit(:nickname, :product_id, :rate, :review).merge(product_id: params[:product_id])
  end
end
