# User plans
Plan.create(name: "Basic", price: 0)
Plan.create(name: "Pro", price: 9.99)

# Users
user = User.new(email: "developer@test.com", plan_id: 1)
user.password = "123456789"
user.password_confirmation= "123456789"
user.save

user = User.new(email: "entrepreneur@test.com", plan_id: 1)
user.password = "123456789"
user.password_confirmation= "123456789"
user.save

user = User.new(email: "investor@test.com", plan_id: 2)
user.password = "123456789"
user.password_confirmation = "123456789"
user.stripe_customer_token = "cus_7YF7auf8QTUhBY"
user.save

# Profiles
profile = Profile.new(first_name: "Hooligan", last_name: "Venison",
                      job_title: "Developer", phone_number: "555-1234",
                      contact_email: "developer@test.com",
                      avatar: File.new("app/assets/images/seed/developer.jpg"),
                      description: "Lorem ipsum dolor sit amet, consectetur
                      adipiscing elit. Vestibulum tellus arcu, maximus vitae
                      urna at, lobortis eleifend arcu. Quisque eget dolor a
                      dolor tincidunt rutrum id volutpat arcu. Nunc lorem quam,
                      eleifend ac suscipit a, hendrerit non mauris. Class aptent
                      taciti sociosqu ad litora torquent per conubia nostra,
                      per inceptos himenaeos. Cras eget dui quam. Nulla mollis
                      sed eros et venenatis. Duis pulvinar arcu ante, vel rutrum
                      orci rutrum at. Nulla commodo mauris est, quis consectetur
                      velit vulputate vitae. Nulla elementum orci volutpat leo
                      volutpat faucibus. Donec et tortor orci. Fusce non erat
                      vitae arcu viverra posuere. Morbi quis luctus ligula, non
                      condimentum orci. Sed placerat dui id ex lobortis sagittis.
                      Ut ac nunc id sem tristique semper quis volutpat tortor.
                      Suspendisse dictum ac nunc eu vestibulum. Nulla at elit
                      semper, malesuada justo vitae, gravida felis.")
profile.user_id = User.find_by(email: profile.contact_email).id
profile.save


profile = Profile.new(first_name: "Spoon", last_name: "Tacos",
                      job_title: "Entrepreneur", phone_number: "555-34543",
                      contact_email: "entrepreneur@test.com",
                      avatar: File.new("app/assets/images/seed/entrepreneur.jpg"),
                      description: "Lorem ipsum dolor sit amet, consectetur
                      adipiscing elit. Vestibulum tellus arcu, maximus vitae
                      urna at, lobortis eleifend arcu. Quisque eget dolor a
                      dolor tincidunt rutrum id volutpat arcu. Nunc lorem quam,
                      eleifend ac suscipit a, hendrerit non mauris. Class aptent
                      taciti sociosqu ad litora torquent per conubia nostra,
                      per inceptos himenaeos. Cras eget dui quam. Nulla mollis
                      sed eros et venenatis. Duis pulvinar arcu ante, vel rutrum
                      orci rutrum at. Nulla commodo mauris est, quis consectetur
                      velit vulputate vitae. Nulla elementum orci volutpat leo
                      volutpat faucibus. Donec et tortor orci. Fusce non erat
                      vitae arcu viverra posuere. Morbi quis luctus ligula, non
                      condimentum orci. Sed placerat dui id ex lobortis sagittis.
                      Ut ac nunc id sem tristique semper quis volutpat tortor.
                      Suspendisse dictum ac nunc eu vestibulum. Nulla at elit
                      semper, malesuada justo vitae, gravida felis.")
profile.user_id = User.find_by(email: profile.contact_email).id
profile.save

profile = Profile.new(first_name: "Gannet", last_name: "Clam",
                      job_title: "Investor", phone_number: "555-1111",
                      contact_email: "investor@test.com",
                      avatar: File.new("app/assets/images/seed/investor.jpg"),
                      description: "Lorem ipsum dolor sit amet, consectetur
                      adipiscing elit. Vestibulum tellus arcu, maximus vitae
                      urna at, lobortis eleifend arcu. Quisque eget dolor a
                      dolor tincidunt rutrum id volutpat arcu. Nunc lorem quam,
                      eleifend ac suscipit a, hendrerit non mauris. Class aptent
                      taciti sociosqu ad litora torquent per conubia nostra,
                      per inceptos himenaeos. Cras eget dui quam. Nulla mollis
                      sed eros et venenatis. Duis pulvinar arcu ante, vel rutrum
                      orci rutrum at. Nulla commodo mauris est, quis consectetur
                      velit vulputate vitae. Nulla elementum orci volutpat leo
                      volutpat faucibus. Donec et tortor orci. Fusce non erat
                      vitae arcu viverra posuere. Morbi quis luctus ligula, non
                      condimentum orci. Sed placerat dui id ex lobortis sagittis.
                      Ut ac nunc id sem tristique semper quis volutpat tortor.
                      Suspendisse dictum ac nunc eu vestibulum. Nulla at elit
                      semper, malesuada justo vitae, gravida felis.")
profile.user_id = User.find_by(email: profile.contact_email).id
profile.save
