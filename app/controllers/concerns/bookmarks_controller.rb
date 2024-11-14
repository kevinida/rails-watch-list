class BookmarksController < ApplicationController
  before_action :find_list, only: [ :new, :create ]

def new
  @bookmark = Bookmark.new
end

def create
  @bookmark = Bookmark.new(bookmark_params)
  @bookmark.list = @list
  if @bookmark.save
    redirect_to list_path(@list)
  else
    render template: "lists/show"
  end
end
class BookmarksController < ApplicationController
  before_action :find_list, only: [ :new, :create ]

def new
  @bookmark = Bookmark.new
end

def create
  @bookmark = Bookmark.new(bookmark_params)
  @bookmark.list = @list
  if @bookmark.save
    redirect_to list_path(@list)
  else
    render template: "lists/show"
  end
end
