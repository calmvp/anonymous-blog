get "/tags/:id" do
  @tag= Tag.find(params[:id])
  @tag_list = @tag.posts
  erb :tagged_list
end
