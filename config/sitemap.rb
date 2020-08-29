# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://xn--u9jy72glt5bkkf.net"

SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do

add "/" , changefreq: 'daily', priority: 1.0
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  add posts_path, :priority => 0.7, :changefreq => 'daily'

  # '/articles/:id' を追加する
  Post.find_each do |post|
    add post_path(post), :lastmod => post.updated_at
  end
end
