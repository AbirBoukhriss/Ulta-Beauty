module Api
    module V1
        class ArticlesController<Basecontroller


                def index
        
                    render json: Article.all
                     
                end
                def show
            
                    render json: Article.find(params[:id])
                end
                def create
                    article = Article.new(article_params)
                    if article.save
                    render json: article, status: :created
                    else
                    render json: article.errors, status: :unprocessable_entity
                    end
                end
                def update
                    article = Article.find(params[:id])
                    article.update(article_params)
                    render json: article, serializer: Api::ArticleSerializer
                end
                def destroy
                    article = Article.find(params[:id])
                    article.destroy
                    head :no_content
                end
                private
                def article_params
                    params.require(:article).permit(:title, :body, :status, :user_id)
                end
        end
    end
end