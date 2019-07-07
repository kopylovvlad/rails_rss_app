json.items do
  @topics.each do |i|
    json.item do
      json.title i.title
      json.subtitle i.subtitle
      json.description i.description
      json.big_text i.big_text
      json.rubric_id i.rubric_id
      json.tag_id i.tag_id
      json.publication_at i.publication_at
      json.one_more_time i.one_more_time
    end
  end
end
