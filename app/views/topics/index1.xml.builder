xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "My Company Blog1"
    xml.description "This is a blog by My Company"
    xml.link '/'

    @topics.each do |i|
      xml.item do
        xml.title i.title
        xml.subtitle i.subtitle
        xml.description i.description
        xml.big_text i.big_text
        xml.rubric_id i.rubric_id
        xml.tag_id i.tag_id
        xml.publication_at i.publication_at
        xml.one_more_time i.one_more_time
      end
    end
  end
end
