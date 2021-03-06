# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @keyword = "%#{params[:keyword]}%".downcase
    @books = Book.where(
      'LOWER(title) LIKE ? or LOWER(author) LIKE ? or year = ?',
      @keyword,
      @keyword,
      @keyword.to_i
    )
  end
end
