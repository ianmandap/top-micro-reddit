def create_user
  User.create(username: Faker::Internet.username,  email: Faker::Internet.email,  password: 'password')
end

def create_post
  Post.create(
  user: create_user,
  title: Faker::Lorem.words(number: rand(3..6)).join(' '),
  body: Faker::Lorem.paragraphs(number: 5).join("\n\n")
)
end

def create_comment(user, post)
  Comment.create(
    user: user,
    post: post,
    body: Faker::Lorem.words(number: rand(3..10)).join(' ')
  )
end

9.times { create_post }
p1 = create_post

3.times { create_comment(create_user, p1) }
