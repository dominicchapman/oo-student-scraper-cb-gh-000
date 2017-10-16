require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    # :profile_url
    # doc.css('.student-card a').first.attr('href')
    # doc.css('.student-card').css('a').attr('href').value

    # :name
    # doc.css('.student-name').first.text
    # doc.css('.student-card').css('.student-name').text

    # :location
    # doc.css('.student-location').first.text
    # doc.css('.student-card').css('.student-location').text

    students = []
    doc.css.('.student.card').each do |student_card|
      student = {}
      student[:profile_url] = student_card.css('a').attr('href').value
      student[:name] = student_card.css('.student-name').text
      student[:location] = student_card.css('.student-location').text
      students << student
    end
    students
  end

  def self.scrape_profile_page(profile_url)

  end

end
