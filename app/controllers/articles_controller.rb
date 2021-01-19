class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    def new
        @article = Article.new
    end

    def index
        @articles = Article.all
    end

    def create
        #render plain: params[:new].inspect
        @article = Article.new(article_params)

        if @article.save
            return redirect_to articles_path
        end

        render :new
    end

    def show
    end

    def actualidad
        render :json => Article.where(category: "actualidad").to_json()
      end
    
      def futuro
        render :json => Article.where(category: "futuro").to_json()
      end

    def edit
    end

    def update
        @article.update article_params
        redirect_to @article
    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private

    def article_params
        params.require(:article).permit(:title, :description, :picture, :category, :time)
    end

    def set_article
        @article = Article.find params[:id]
    end
end
