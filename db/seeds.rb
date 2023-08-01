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
