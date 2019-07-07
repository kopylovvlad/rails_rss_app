doc = Ox::Document.new(:version => '1.0', :encoding => 'UTF-8')

rss = Ox::Element.new('rss')
rss[:version] = "2.0"
doc << rss

# render 'index3_partial', rss: rss

channel = Ox::Element.new('channel')
rss << channel

title = Ox::Element.new('title')
title << 'My Company Blog1'
channel << title

description = Ox::Element.new('description')
description << 'This is a blog by My Company'
channel << description

link = Ox::Element.new('link')
link << '/'
channel << link

@topics.each do |i|
  item = Ox::Element.new('item')
  channel << item

  title = Ox::Element.new('title')
  title << i.title
  item << title

  subtitle = Ox::Element.new('subtitle')
  subtitle << i.subtitle
  item << subtitle

  description = Ox::Element.new('description')
  description << i.description
  item << description

  big_text = Ox::Element.new('big_text')
  big_text << i.big_text
  item << big_text

  rubric_id = Ox::Element.new('rubric_id')
  rubric_id << i.rubric_id.to_s
  item << rubric_id

  tag_id = Ox::Element.new('tag_id')
  tag_id << i.tag_id.to_s
  item << tag_id

  publication_at = Ox::Element.new('publication_at')
  publication_at << i.publication_at.to_s
  item << publication_at

  one_more_time = Ox::Element.new('one_more_time')
  one_more_time << i.one_more_time.to_s
  item << one_more_time
end
doc
