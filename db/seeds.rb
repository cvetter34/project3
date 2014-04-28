# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Tool.destroy_all
Transaction.destroy_all
Message.destroy_all
Conversation.destroy_all

User.create ([
  {
    email: "cvetter34@gmail.com",
    password: "123",
    password_confirmation: "123"
  },
  {
    email: "marco@gmail.com",
    password: "123",
    password_confirmation: "123"
  },
  {
    email: "julie@gmail.com",
    password: "123",
    password_confirmation: "123"
  }
])

Tool.create ([
  {
    name: "Hammer",
    category: "Tools & Garden",
    description: "It fell from Asgard.",
    user_id: 1,
  },
  {
    name: "Shovel",
    category: "Tools & Garden",
    description: "This is used for digging out corpses.",
    user_id: 2,
  },
  {
    name: "Ball",
    category: "Sporting Equipment",
    description: "Target: Julie.",
    user_id: 3,
  },
  {
    name: "LOLBall",
    category: "Sporting Equipment",
    description: "Target: Julie.",
    user_id: 3,
  },
  {
    name: "SphereBall",
    category: "Sporting Equipment",
    description: "Target: Julie.",
    user_id: 3,
  },
  {
    name: "SquareBall",
    category: "Sporting Equipment",
    description: "Target: Julie.",
    user_id: 3,
  },
  {
    name: "FootBall",
    category: "Sporting Equipment",
    description: "Target: Julie.",
    user_id: 3,
  },
  {
    name: "WtfBall",
    category: "Sporting Equipment",
    description: "Target: Julie.",
    user_id: 3,
  },
  {
    name: "CannonBallz",
    category: "Sporting Equipment",
    description: "Target: Julie.",
    user_id: 3,
  }
])

Transaction.create ([
  {
    user_id: 1,
    tool_id: 1
  },
    {
    user_id: 2,
    tool_id: 2
  },
    {
    user_id: 3,
    tool_id: 3
  }
])

Message.create ([
  {
    subject: "Hi from Christian",
    body: "Yo man",
    sender_id: 1
  },
    {
    subject: "Hi from Marco",
    body: "Yo man",
    sender_id: 2
  },
    {
    subject: "Hi from Julie",
    body: "Yo man",
    sender_id: 3
  }
])

