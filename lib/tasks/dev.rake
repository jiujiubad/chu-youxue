namespace :dev do
  # 跳过回调：<http://thelazylog.com/skip-activerecord-callbacks>
  task all: [
              :create_users,
              :create_camps,
              :create_courses,
              :create_syllabuses,
              :create_posts,
              :create_tasks,
              :create_competitions,
              :create_works,
              :create_live_broadcasts,
              :create_conversations,
              :create_meetup_groups
            ]
  ## User & Camp
  task create_users: :environment do
    puts "Generate faker users."
    User.create!(name:                  "chu",
                 email:                 "chu@example.com",
                 password:              "chu@example.com",
                 password_confirmation: "chu@example.com",
                 admin:                 true,
                 activated:             true,
                 activated_at:          Time.zone.now,
                 avatar:                "avatar/a1.png",
                 github_name:           "jiujiubad",
                 wechat:                "jiujiubad")
    80.times do
      password = Faker::Internet.password(8, 20)
      User.create!(name:                  Faker::Internet.username(4..10),
                   email:                 Faker::Internet.email,
                   password:              password,
                   password_confirmation: password,
                   admin:                 false,
                   activated:             true,
                   activated_at:          Faker::Time.between(5.years.ago, Date.today, :all),
                   avatar:                "avatar/a#{rand(1..6)}.png",
                   github_name:           Faker::Internet.username(4..10),
                   wechat:                [Faker::Internet.username(4..10), Faker::PhoneNumber.cell_phone].sample)
    end
  end
  task create_camps: :environment do
    puts "Generate faker camps."
    ["Python 第一期", "Python 第二期", "Java 第一期", "Java 第二期"].each do |name|
      Camp.create!(name:        name,
                   description: Faker::Lorem.paragraph,
                   is_hidden:   false)
    end
  end
  ## Camp-Course
  task create_courses: :environment do
    puts "Generate faker courses."
    Camp.all.each do |camp|
      rand(30..40).times do
        camp.courses.create!(name:        Faker::Movie.quote,
                             description: Faker::Lorem.paragraph,
                             image:       "course/c#{rand(1..24)}.jpg",
                             is_locked:   false)
      end
    end
  end
  task create_syllabuses: :environment do
    puts "Generate faker syllabuses."
    Course.all.each do |course|
      rand(4..6).times do
        course.syllabuses.create!(name:        Faker::Book.title,
                                  description: Faker::Lorem.paragraph)
      end
    end
  end
  task create_posts: :environment do
    puts "Generate faker posts."
    Syllabus.all.each do |syllabus|
      rand(2..6).times do
        syllabus.posts.create!(name:        Faker::Book.title,
                               description: Faker::Markdown.sandwich(6, 3))
      end
    end
  end
  task create_tasks: :environment do
    puts "Generate faker tasks."
    Post.all.sample(Post.all.size * 0.1).each do |post| #10%的文章有作业
      rand(1..4).times do
        post.tasks.create!(content:     Faker::Lorem.paragraph,
                           description: nil,
                           image:       nil)
      end
    end
  end
  ## Camp-Competition
  task create_competitions: :environment do
    puts "Generate faker competitions."
    Camp.all.each do |camp|
        4.times do
        camp.competitions.create!(name:        Faker::Book.title,
                                  description: Faker::Lorem.paragraph,
                                  image:       "competition/c#{rand(1..4)}.jpg")
      end
    end
  end
  task create_works: :environment do
    puts "Generate faker works."
    Competition.all.each do |competition|
      50.times do
        competition.works.create!(name:        Faker::Movie.quote,
                                  description: Faker::Lorem.paragraph,
                                  image:       "work/w#{rand(1..30)}.jpg",
                                  image_small: "work-small/w#{rand(1..30)}.jpg",
                                  wechat_code: nil)
      end
    end
  end
  ## Camp-liveBroadcast
  task create_live_broadcasts: :environment do
    puts "Generate faker live_broadcasts."
    Camp.all.each do |camp|
      20.times do
        camp.live_broadcasts.create!(name:        Faker::Movie.quote,
                                     description: Faker::Lorem.paragraph)
      end
    end
  end
  ## Camp-Conversation
  task create_conversations: :environment do
    puts "Generate faker conversations."
    Camp.all.each do |camp|
      20.times do
        camp.conversations.create!(name:        Faker::Movie.quote,
                                   description: Faker::Lorem.paragraph)
      end
    end
  end
  ## Camp-MeetupGroup
  task create_meetup_groups: :environment do
    puts "Generate faker meetup_groups."
    Camp.all.each do |camp|
      20.times do
        camp.meetup_groups.create!(name:        Faker::Movie.quote,
                                   description: Faker::Lorem.paragraph,
                                   meetup_type: ["线上", "线下"].sample,
                                   meetup_time: ["单次", "长期"].sample,
                                   time_info:   Faker::Time.forward(23, :morning),
                                   city:        Faker::Address.city,
                                   location:    Faker::Address.full_address)
      end
    end
  end
end