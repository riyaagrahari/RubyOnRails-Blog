class ArticlesController < ApplicationController
    # list all articles
    def index
        @articles = Article.all
    end
    # show particular article by id
    def show
        @article = Article.find(params[:id])
    end
    def new
    end
    # craete new article
    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    private
        def article_params
            params.require(:article).permit(:title,:text)
        end
end
