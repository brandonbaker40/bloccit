FactoryGirl.define do
  factory :comment do
    topic RandomData.random_sentence
    user RandomData.random_name
    post RandomData.random_paragraph
  end
end
