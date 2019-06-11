class SearchController < ApplicationController
  def index
	  @keyword = "%#{params[:keyword]}%".downcase
	  @books = Book.where("LOWER(title) LIKE ? or LOWER(author) LIKE ? or year = ?", @keyword, @keyword, @keyword.to_i)
	  @products = @books
  end
end
