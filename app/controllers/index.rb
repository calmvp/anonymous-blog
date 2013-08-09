get "/" do
  @posts = Post.order('created_at DESC').limit(10)
  @tags = Tag.order('title ASC')
  erb :index
end


