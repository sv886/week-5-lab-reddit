if User.count == 0
  User.create user_name: "koopa"
  User.create user_name: "qwerty_uiop"
  User.create user_name: "th3 d00d"
end

if Post.count == 0
  Post.create title: "Dwight, you're doing it wrong.", url: "https://streamable.com/sewm", user_id: 1, likes: 0
  Post.create title: "DIY to wow your friend(s)", url: "http://lifehacker.com/build-a-retro-gaming-table-on-the-cheap-with-a-10-ikea-1762899356", user_id: 1, likes: 0
  Post.create title: "Throwback Thursday", url: "https://www.youtube.com/watch?v=vXmqauitBkM", user_id: 2, likes: 0
  Post.create title: "Rails Routing", url: "http://guides.rubyonrails.org/routing.html#redirection", user_id: 3, likes: 0
end

if Comment.count == 0
  Comment.create body: "What a joke of a season", user_id: 3, post_id: 1
  Comment.create body: "........", user_id: 1, post_id: 1
  Comment.create body: "still jammin this 20 years later!", user_id: 1, post_id: 3
  Comment.create body: "aaaaayyyyy", user_id: 2, post_id: 3
  Comment.create body: "interest + confusion = slow progress!", user_id: 2, post_id: 4
end
