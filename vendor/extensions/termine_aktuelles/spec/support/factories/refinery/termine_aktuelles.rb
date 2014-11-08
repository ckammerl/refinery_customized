
FactoryGirl.define do
  factory :termine_aktuelle, :class => Refinery::TermineAktuelles::TermineAktuelle do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

