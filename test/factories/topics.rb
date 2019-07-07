FactoryBot.define do
  factory :topic do
    title { Faker::Lorem.words(rand(5..15)).join(' ') }
    subtitle { Faker::Lorem.words(rand(10..25)).join(' ') }
    description { Faker::Lorem.paragraphs(rand(5..25)).join("\n\r") }
    big_text { Faker::Lorem.paragraphs(rand(25..100)).join("\n\r") }
    rubric_id { rand(5_000..10_000) }
    tag_id { rand(5_000..10_000) }
    publication_at { rand(10.years).seconds.ago }
    one_more_time { rand(10.years).seconds.ago }
  end
end
