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
def create
  @list = List.new(list_params)
  if @list.save
  redirect_to list_path(@list)
  else
    render :new
  end
end

def destroy
  @list = List.find(params[:id])
  @list.destroy
  redirect_to root_path
end

private

def list_params
  params.require(:list).permit(:name, :imageUrl)
end

end
