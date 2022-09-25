#!/usr/bin/env /Users/gitalevin/.rbenv/shims/ruby
# <xbar.var>string(CURRENT_WEATHER_API_KEY=""): OpenWeather api key</xbar.var>
require "http"

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&appid=#{ENV["CURRENT_WEATHER_API_KEY"]}&units=imperial") 
data = response.parse

temp = data["main"]["temp"]
if temp < 60
  puts "#{temp} °F""🥶"
elsif temp > 60
  puts "#{temp} °F""🥵"
end