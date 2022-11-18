Post.delete_all

100.times do |i|
  post = Post.create!(title: "Title #{i}", content: "Content #{i}")
  25.times do |j|
    Comment.create!(post: post, author: "Author #{j}", body: "Comment #{j}")
  end
end