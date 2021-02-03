post = Post.create(username: 'jonah', content: 'first post!', likes: 0, date: Date.today)

comment = Comment.create(post_id: 1, username: 'jonah', content: 'first comment!', likes: 1, date: Date.today, kind: 'Dislike')