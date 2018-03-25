    require 'mechanize'
    
    agent = Mechanize.new
    page = agent.get('http://review-movie.herokuapp.com/')
    titles = page.search('.entry-title a')
    
    titles.each do |title|
        
    puts title.inner_text
    end