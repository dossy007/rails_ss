    # require 'mechanize'
    
    # def scraping_image(link)
    #     agent =Mechanize.new
    #     page = agent.get(link)
    #     images_url = page.at('.entry-content img').get_attribute('src')
    #     return images_url
    # end
    
    # links =[]
    # agent =Mechanize.new
    # current_page = agent.get('http://review-movie.herokuapp.com/')
    # elements = current_page.search('.entry-title a')
    # elements.each do |ele|
    #     links << ele.get_attribute('src') ##URL取得
    # end
    
    # links.each do |link|
    #   puts scraping_image('http://review-movie.herokuapp.com' + link)
    # end   
    
    
    
    
    require 'mechanize'
    
    
    def scraping_image(link)
        agent = Mechanize.new
        page = agent.get(link)
        urls = page.at('.entry-content img')[:src]
        return urls
    end
    ##LINK
    links = []
    agent = Mechanize.new
    current_page = agent.get("http://review-movie.herokuapp.com")
    elements = current_page.search('.entry-title a')
    elements.each do |ele|
        links << ele[:href]
    end
    
    ##
    
    links.each do |link|
       puts scraping_image('http://review-movie.herokuapp.com' + link)
    end