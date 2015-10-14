FactoryGirl.define do  

  factory :user do
  	sequence :email do |n|
  		"myemail#{n}@gmail.com"
  	end
  	password "12345678"
  	password_confirmation "12345678"
  end

  factory :photo do
    
  end

  factory :comment do
    
  end

  factory :place do
  	name "supersushi"
	description "best sushi in town!!!!"
	address "mytown Sigapore 10022"
  end
end