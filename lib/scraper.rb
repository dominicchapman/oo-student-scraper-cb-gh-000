require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    binding.pry
    # :profile_url
    # doc.css('.student-card a').first.attr('href')

    # :name
    # doc.css('.student-name').first.text

    # :location
    # doc.css('.student-location').first.text
  end

  def self.scrape_profile_page(profile_url)

  end

end
