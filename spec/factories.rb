# This will guess the User class
FactoryGirl.define do
  factory :relation do
    
  end
  
  #factory :user do
  #  first_name "John"
  #  last_name  "Doe"
  #  admin false
  #end

  # This will use the User class (Admin would have been guessed)
  factory :disciplines_students do
    student_id "12123"
    discipline_id "123"
    
  end
end