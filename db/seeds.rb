# Array of categories to randomly choose from
CATEGORIES = ['Technology', 'Travel', 'Food', 'Lifestyle', 'Health']

# Array of statuses to randomly choose from
STATUSES = ['Draft', 'Published']

# Array of sample authors to randomly choose from
AUTHORS = ['John Doe', 'Jane Smith', 'Bob Johnson', 'Emily Adams']

# Set a common date for all blog posts
COMMON_PUBLISHED_DATE = Date.new(2023, 8, 1) # Replace with your desired date

# Create 10 sample blog posts with the same date
10.times do |n|
  BlogPost.create!(
    title: "Sample Blog Post #{n + 1}",
    content: "This is the content of Sample Blog Post #{n + 1}.",
    subtitle1: "Subheading #{n + 1}",
    subcontent: "Subcontent of Sample Blog Post #{n + 1}.",
    author: AUTHORS.sample,
    published_date: COMMON_PUBLISHED_DATE,
    category: CATEGORIES.sample,
    slug: "sample-blog-post-#{n + 1}",
    status: STATUSES.sample
  )
end

10.times do |n|
  Workshop.create!(
    title: "Sample Workshop #{n + 1}",
    sub_title: "Sub Title #{n + 1}",
    sub_content: "Sub Content of Sample Workshop #{n + 1}.",
    lerninhalte: "Learning content for Sample Workshop #{n + 1}.",
    lernziele: "Learning objectives for Sample Workshop #{n + 1}.",
    methode: "Teaching method for Sample Workshop #{n + 1}.",
    workshopdescription: "Description for Sample Workshop #{n + 1}.",
    author: AUTHORS.sample,
    slug: "sample-workshop-#{n + 1}",
    created_at: Time.now - (n + 1).days, # Adjust the created_at timestamp as needed
    updated_at: Time.now - (n + 1).days, # Adjust the updated_at timestamp as needed
    meta_title: "Meta Title for Sample Workshop #{n + 1}",
    meta_description: "Meta Description for Sample Workshop #{n + 1}"
  )
end
