###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

# Activates live reloading of sites
activate :livereload

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"

  blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  blog.sources = "{year}-{month}-{day}-{title}.html"
  blog.layout = "layout"
  blog.layout = "journal-entry-page"
  blog.summary_separator = /(READMORE)/

  blog.summary_length = 250

  blog.year_link = "{year}.html"
  blog.month_link = "{year}/{month}.html"
  blog.day_link = "{year}/{month}/{day}.html"
  blog.default_extension = ".markdown"

  # blog.tag_template = "tag.html"
  # blog.calendar_template = "calendar.html"
  blog.taglink = "categories/{tag}.html"
  # blog.taglink = "tags/{tag}.html"

  # blog.taglink = "tags/{tag}.html"
  # blog.tag_template = "tag.html.erb"

  # Enable pagination
  blog.paginate = true
  # blog.per_page = 10
  blog.page_link = "page/{num}"

  blog.new_article_template = File.expand_path('../source/template.yml', __FILE__)


  # =========================
  # My stuff
  # =========================

    # set options on blog
    blog.sources = "{category}/{title}.html"
    blog.permalink = "{category}/{title}.html"

    # pagination needs to be pageable: true on frontmatter
    blog.paginate = true

    blog.page_link = "p{num}"
    blog.per_page = 10
    blog.page_link = "page/{num}"

    # blog.layout = "blog_layout"
end


activate :directory_indexes
