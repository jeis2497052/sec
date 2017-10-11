FactoryGirl.define do
  factory :topic do
    name "A topic"

    after(:create) do |topic|
      FactoryGirl.create(:lesson, topic_id: topic.id)
    end
  end

  factory :lesson
end