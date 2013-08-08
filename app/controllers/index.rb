get "/" do
  @posts = Post.order('created_at DESC')
  @tags = Tag.order('title ASC')
  erb :index
end


