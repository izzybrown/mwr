require 'json'
require 'open-uri'

class PagesController < ApplicationController
  def home
    # get channel id for bloomberg politics youtube channel and save with api key
    url = open("https://www.googleapis.com/youtube/v3/activities?part=snippet,contentDetails&channelId=UCV61VqLMr2eIhH4f51PV0gA&key=#{ENV['API_KEY']}&maxResults=50").read
    json = JSON.parse(url)

    #select json items, items is the JSON to iterate over
    @items = json['items']
    #in the home view - iterate over the items array to display information from the youtube JSON file
  end

  def tech
    #get channel id for bloomberg tech and save url with channel id and API Key
    url = open("https://www.googleapis.com/youtube/v3/activities?part=snippet,contentDetails&channelId=UCrM7B7SL_g1edFOnmj-SDKg&key=#{ENV['API_KEY']}&maxResults=50").read
    json = JSON.parse(url)
    #select json items that you want to display
    @items = json['items']

  end
end
