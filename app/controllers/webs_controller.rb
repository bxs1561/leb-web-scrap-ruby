class WebsScrapping < ApplicationController
  require 'Nokogiri'

  def scrap
    url = 'https://bridgereports.com/city/wichita-kansas/'
    @html = open(url)

  end
end