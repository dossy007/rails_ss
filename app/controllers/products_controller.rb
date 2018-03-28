class ProductsController <RankingController
  before_action :authenticate_user!,only: :search
  def index
    @product = Product.order("id ASC").limit(5)
  end
  
  def show
    # productsテーブルから該当するidの作品情報を取得し@productの変数へ代入する処理を書いて下さい
    @product = Product.find(params[:id])
  end
  
  def search ##検索フォーム
    @product = Product.where('title LIKE(?)',"%#{params[:keyword]}%").limit(10)
  end
end
