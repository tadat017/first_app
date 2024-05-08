class PostsController < ApplicationController
  def index #indexアクションを定義した
                           #これでルーティングに対応するアクションを用意
    @posts = Post.all  # すべてのレコードを@postsに代入
  end  #コントローラーで定義したインスタンス変数は対尾するビューで使える
    def new
    end

    def create
        Post.create(content: params[:content])
        redirect_to"/posts"
    end

end     #今回の場合postaコントローラーのindexアクションでインスタン変数
        #を定義したので、postsディレクトリのindex.html.erbで使ってる