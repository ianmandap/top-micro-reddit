u1 = User.create(username: 'user1',  email: 'email1@example.com',  password: 'password')
u2 = User.create(username: 'user2',  email: 'email2@example.com',  password: 'password')

p1 = Post.create(
  user: u1,
  title: "Title",
  body: "Example sentence."
)

c1 = Comment.create(
  user: u2,
  post: p1,
  body: "Great!"
)
