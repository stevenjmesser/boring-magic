module Jekyll
  class TagPageGenerator < Generator
    safe true

    def generate(site)
      tags = site.posts.docs.flat_map { |post| post.data['tags'] || [] }.to_set
      tags.each do |tag|
        slug = Jekyll::Utils.slugify(tag)
        site.pages << TagPage.new(site, site.source, tag, slug)
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, tag, slug)
      @site = site
      @base = base
      @dir  = File.join('tag', slug)
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag.html')
      self.data['tag'] = tag
      self.data['title'] = "Tag: #{tag}"
      self.data['slug'] = slug  # Storing slug for possible use in templates
    end
  end
end
