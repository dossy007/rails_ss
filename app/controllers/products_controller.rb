class ProductsController < ReviewController
  
  def index
    @products = Product.order('id ASC').limit(12)
  end
  
  def show
    # productsテーブルから該当するidの作品情報を取得し@productの変数へ代入する処理を書いて下さい
    @product = Product.new # 問題3ではこのコードは消して新しくコードを書いてください
  end
  
  def search ##検索フォーム
  
  end
end
