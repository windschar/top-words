# encoding: UTF-8

require 'json'
require 'open-uri'
require 'nokogiri'


all_words = JSON.parse(File.new('./wlist.json').read)
known = unknown = Array.new

all_words.each_cons(2) do |ary|
  printf("%20s | %20s | (y/n/r)?", ary[0]["key"], ary[1]["key"])
  
  yes_or_no = gets.chomp.downcase
  if yes_or_no =~ /y/
    known << ary[0]["key"]
  elsif yes_or_no =~ /n/
    unknown << ary[0]["key"]
  end
end


snapshot_id = Time.now().strftime("%T")

File.open("known_#{snapshot_id}.txt") do |file| 
  known.each { |w| file.puts w } 
end

File.open("unknown_#{snapshot_id}.txt") do |file| 
  unknown.each { |w| file.puts w }
end