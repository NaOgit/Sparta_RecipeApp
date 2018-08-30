class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @book = Book.new(book_params)
    @author = author_path[:id]
    @book.save
    redirect_to @author
  end

  def show
    @book = Book.find(params[:id])
    @author = @book.author
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to authors_path
  end

  private
    def book_params
      params.require(:book).permit(:title, :genre)
    end
    private
      def author_params
        params.permit(:id, :first_name, :last_name)
      end
end
