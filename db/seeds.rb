# Seed data for the demo. The demo database is ephemeral (SQLite on a free
# host), so seeds re-run on every deploy — destroy first to keep this
# idempotent.

Comment.destroy_all
Post.destroy_all

post1 = Post.create!(
  username: 'jonah',
  content: 'Just shipped my first full-stack app — React on the front, Rails on the back!',
  likes: 12,
  date: Date.today
)

post2 = Post.create!(
  username: 'jonah',
  content: 'Working on a new game in Unity. Medieval zombies, lots of swords. Stay tuned!',
  likes: 8,
  date: Date.today
)

post3 = Post.create!(
  username: 'gamedev_fan',
  content: 'That zombie slasher demo was awesome — when is the full game out?',
  likes: 5,
  date: Date.today
)

post1.comments.create!(
  username: 'rails_fan',
  content: 'Nice work! Love the clean API design.',
  likes: 3,
  date: Date.today,
  kind: 'Like'
)

post1.comments.create!(
  username: 'code_newbie',
  content: 'How long did this take to build?',
  likes: 1,
  date: Date.today,
  kind: 'Like'
)

post2.comments.create!(
  username: 'zombie_hunter',
  content: 'Take my money. Day one buy.',
  likes: 5,
  date: Date.today,
  kind: 'Like'
)

puts "Seeded #{Post.count} posts and #{Comment.count} comments."
