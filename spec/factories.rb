FactoryGirl.define do
  factory(:country) do
    c_name('USA')
    c_description('Its a country')
    continent('North America')
    image('http://www.roomtoread.org/view.image?Id=3435')
  end

  factory(:project) do
    p_name('Project for USA')
    p_description('We need stuff')
    p_image('http://www.roomtoread.org/view.image?Id=3435')
    total_needed(1234)
    country_id(1)
  end

  factory :admin, class: User do
    email 'admin@admin.com'
    password 'testtest'
    admin true
  end

  factory(:user) do
    email('user@user.com')
    password('testtest')
  end
end
