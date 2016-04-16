class Feed < ActiveRecord::Base


  # def entries
  #   feed = feed = Feedjira::Feed.fetch_and_parse url
  # end

  def entries(num = 3)
    Feedjira::Feed.add_common_feed_entry_element("img")
    feed = Feedjira::Feed.fetch_and_parse(url)
    feed.entries.take(num)
    # add_items(feed.entries)  # Saving items to database
  end

  def feed_title
    feed = Feedjira::Feed.fetch_and_parse(url)
    title = feed.title
  end
end