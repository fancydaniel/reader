class PreviewService
  def initialize(site_url)
    @image = LinkThumbnailer.generate(site.url)
  rescue LinkThumbnailer::BadURIFormat
    raise InvalidURLError
  end

  def image_url
    @image.images.first.src.to_s
  end

end