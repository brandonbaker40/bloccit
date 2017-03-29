FactoryGirl.define do
  factory :vote do
    #topic RandomData.random_sentence
    value 1
    user RandomData.random_name
    post RandomData.random_paragraph
  end
end
