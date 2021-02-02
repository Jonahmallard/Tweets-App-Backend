post = Post.create(username: 'jonah', content: 'first post!', likes: 0, date: Date.today)

comment = Comment.create(post_id: 1, username: 'jonah', content: 'first comment!', likes: 1, date: Date.today)
commentTwo = Comment.create(post_id: 1, username: 'jon', content: 'second comment!', likes: -2, date: Date.today)