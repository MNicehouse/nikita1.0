# Array of categories to randomly choose from
puts "dropping database entries"
User.destroy_all
BlogPost.destroy_all
Workshop.destroy_all

puts "creating users, workshops and blogposts"

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


Workshop.create!(
  title: "Der ideale Teamplayer",
  sub_title: "Sub Title ",
  sub_content: "In unserem Workshop Der ideale Teamplayer erkunden Sie die Eigenschaften, die einen herausragenden Teamspieler ausmachen, und erfahren, wie das Fehlen dieser Eigenschaften die Teamdynamik beeinflussen kann. In einer Zeit, in der soziale Fähigkeiten in der Arbeitswelt immer entscheidender werden, ist Teamfähigkeit von großer Bedeutung.",
  lerninhalte: "- Die Eigenschaften des idealen Teamplayers nach Patrick Lencioni.
  - Die persönliche Reflexion über diese Eigenschaften und deren Integration in das eigene Verhalten.",
  lernziele: "- Kennenlernen der Schlüsselqualitäten eines idealen Teamplayers nach Patrick Lencioni.
  - Reflektion über diese Eigenschaften und deren Anwendung auf die eigene Person.
  - Bewusstsein für die Bedeutung sozialer Fähigkeiten in der modernen Arbeitswelt.",
  methode: "Dieser Workshop verwendet interaktive Improvisationsspiele, um den Teilnehmern praktische Erfahrungen und Reflexion zu ermöglichen. Neben der Entwicklung von geistiger Flexibilität und Kreativität lernen Sie im Improvisationstheater, sich innerhalb der Gruppe zu akzeptieren und zu bestärken. Der bewusste Einsatz von Körpersprache und Stimme wird ebenfalls trainiert. Diese erworbenen Fähigkeiten sind nicht nur auf der Bühne, sondern auch in der modernen Berufswelt von unschätzbarem Wert.",
  workshopdescription: "Entwickeln Sie die Schlüsselqualitäten eines idealen Teamplayers im Workshop Der ideale Teamplayer. Entdecken Sie, wie soziale Fähigkeiten in der modernen Arbeitswelt immer wichtiger werden und wie sie die Teamleistung beeinflussen können.",
  author: AUTHORS.sample,
  slug: "sample-workshop,",
  created_at: Time.now, # Adjust the created_at timestamp as needed
  updated_at: Time.now, # Adjust the updated_at timestamp as needed
  meta_title: "Meta Title for Sample Workshop ",
  meta_description: "Meta Description for Sample Workshop"
)

Workshop.create!(
  title: "Gesprächspartner besser wahrnehmen und angepasst kommunizieren",
  sub_title: "Sub Title ",
  sub_content: "Unser Workshop Gesprächspartner besser wahrnehmen und angepasst kommunizieren vermittelt Ihnen die Kunst, sich auf Ihren Gesprächspartner zu fokussieren, aktiv zuzuhören und Ihre Kommunikation situativ anzupassen. Ein Großteil der Kommunikation findet auf der Beziehungsebene statt, und ein erhöhtes Bewusstsein für Ihren Gesprächspartner ist entscheidend, um visuelle und auditive Signale zu erfassen und Ihre Kommunikation effektiv zu gestalten.",
  lerninhalte: "- Multitasking vs. Fokus in der Wahrnehmung.
  - Aktives Zuhören und angepasste Kommunikation.
  - Experimente mit Dominanz und Unterwerfung durch Körpersprache.
  - Adressierung von Gefühlen auf der Beziehungsebene.",
  lernziele: "- Verbesserte Wahrnehmung der äußeren Haltung in Gesprächen.
  - Fähigkeit zur gezielten Anpassung der Kommunikation je nach Situation.
  - Erkennen und Experimentieren mit Statusdynamiken.
  - Stärkung von Fehlertoleranz und Vertrauen in der Gruppe.",
  methode: "In diesem Workshop verwenden wir spielerische Improvisationsspiele, um den Teilnehmern praktische Erfahrungen und Reflexion zu ermöglichen. Neben der Entwicklung von geistiger Flexibilität und Kreativität lernen Sie im Improvisationstheater, sich innerhalb der Gruppe zu akzeptieren und zu bestärken. Die bewusste Nutzung von Körpersprache und Stimme wird ebenfalls trainiert. Diese erlernten Fähigkeiten sind nicht nur für die Bühne, sondern auch für die moderne Berufswelt von unschätzbarem Wert.",
  workshopdescription: "Verbessern Sie Ihre Kommunikationsfähigkeiten im Gesprächspartner besser wahrnehmen und angepasst kommunizieren Workshop. Lernen Sie, sich auf Ihr Gegenüber zu konzentrieren, aktiv zuzuhören und Ihre Kommunikation bewusst anzupassen, während Sie spielerisch die Dynamik der Beziehungsebene erkunden.",
  author: AUTHORS.sample,
  slug: "sample-workshop,",
  created_at: Time.now, # Adjust the created_at timestamp as needed
  updated_at: Time.now, # Adjust the updated_at timestamp as needed
  meta_title: "Meta Title for Sample Workshop ",
  meta_description: "Meta Description for Sample Workshop"
)

Workshop.create!(
  title: "Status erlernen und bewusst einsetzen",
  sub_title: "Sub Title ",
  sub_content: "In unserem Workshop Status erlernen und bewusst einsetzen tauchen Sie ein in die faszinierende Welt der Statusdynamiken in menschlichen Interaktionen. Sie lernen, die äußere Haltung Ihrer Gesprächspartner besser wahrzunehmen und Ihre eigene Kommunikationsweise situationsgerecht anzupassen",
  lerninhalte: "- Theorie zu Status nach Keith Johnstone.
  - Identifikation von Dominanz und Unterwerfung durch Körpersprache.
  - Erkundung des eigenen Status.
  - Experimentieren mit verschiedenen Statusniveaus.
  - Förderung der Fehlertoleranz und des Gruppenvertrauens.",
  lernziele: "- Verbesserte Wahrnehmung der äußeren Haltung in Gesprächen.
  - Fähigkeit zur gezielten Anpassung der Kommunikation je nach Situation.
  - Erkennen und Experimentieren mit Statusdynamiken.
  - Stärkung von Fehlertoleranz und Vertrauen in der Gruppe.",
  methode: "Dieser Workshop basiert auf interaktiven Improvisationsspielen, die den Teilnehmern praktische Erfahrungen und Reflexion ermöglichen. Durch den spielerischen Ansatz erleben Sie die Inhalte hautnah, wachsen als Gruppe zusammen und reflektieren gemeinsam. Sie werden geistige Flexibilität, Kreativität und die bewusste Nutzung von Körpersprache und Stimme trainieren, was nicht nur für die Bühne, sondern auch für die berufliche Welt von unschätzbarem Wert ist.",
  workshopdescription: "Erfahren Sie die Macht der Statusdynamiken im Status erlernen und bewusst einsetzen Workshop. Entwickeln Sie bessere Wahrnehmungsfähigkeiten und lernen Sie, Ihre Kommunikation situationsgerecht anzupassen. In einer interaktiven und spielerischen Umgebung stärken Sie Ihr Verständnis für Statusverhalten und fördern Fehlertoleranz und Vertrauen in der Gruppe.",
  author: AUTHORS.sample,
  slug: "sample-workshop,",
  created_at: Time.now, # Adjust the created_at timestamp as needed
  updated_at: Time.now, # Adjust the updated_at timestamp as needed
  meta_title: "Meta Title for Sample Workshop ",
  meta_description: "Meta Description for Sample Workshop"
)
