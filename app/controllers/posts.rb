get "/posts/create" do
  erb :create
end

post "/posts" do
  @post = Post.create(params[:post])
  redirect "/posts/#{@post.id}"
end

get "/posts/destroy/:id" do
  @post = Post.find(params[:id])
  @tags = @post.tags
  @tags.each do |tag|
    tag.destroy
  end
  @post.destroy
  redirect "/"
end

get "/posts/edit/:id" do
  @post = Post.find(params[:id])
  erb :edit
end

post "/posts/edit/:id" do
  Post.find(params[:id]).update_attributes(params[:post])
  redirect "/"
end

get "/posts/:id" do
  @post = Post.find(params[:id])
  erb :view
end


