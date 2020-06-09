class WebsController < ApplicationController
  require 'Nokogiri'
  require 'open-uri'


  def scrap
    url = 'https://nokogiri.org/tutorials/installing_nokogiri.html'
    html = URI.open(url)
    doc = Nokogiri::HTML(html)
    # doc = Nokogiri.XML('<foo><bar /></foo>', nil, 'EUC-JP')

    # @tables=doc.css('nav ul.menu li a', 'article h2')
    # "### Search for nodes by xpath"
    # @tables = doc.xpath('//nav//ul//li/a', '//article//h2')
    ### Or mix and match
    @tables = doc.search('nav ul.menu li a', '//article//h2')
  end

  def webs_scrap
    url = 'https://bridgereports.com/city/wichita-kansas/'
    open = URI.open(url)
    @doc = Nokogiri::HTML(open)
    # puts(@doc)
    @table = @doc.at('table')
    @tab=@table.search('tr')


  end
end