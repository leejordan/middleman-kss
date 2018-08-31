# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

helpers do
    def markdown_to_html(md)
        options = {
            filter_html:     true,
            hard_wrap:       true,
            space_after_headers: true,
            fenced_code_blocks: true
        }

        extensions = {
            autolink:           true,
            superscript:        true,
            tables:             true,
            disable_indented_code_blocks: true
        }

        renderer = Redcarpet::Render::HTML.new(options)
        markdown = Redcarpet::Markdown.new(renderer, extensions)

        markdown.render(md).html_safe
    end

    def is_page_active(page)
        current_page.url == page ? "active" : ''
    end
end

# Build pretty-url https://middlemanapp.com/advanced/pretty-urls/
activate :directory_indexes

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
    config[:host] = "https://a-url.com"
    config[:sitename] = "A website"
    config[:description] = "This is a website"
end

configure :development do
    config[:host] = "http://127.0.0.1:4567"
    config[:sitename] = "A site"
    config[:description] = "This is a website"
end
