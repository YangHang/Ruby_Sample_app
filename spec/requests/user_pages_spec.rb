require 'spec_helper'

describe "UserPages" do

  subject {page}
  describe "profile page" do
    let(:user){FactoryGirl.create(:user)}
    before {visit user_path(user)}
    it{should have_selector('h1',text: user.name)}
    it{should have_selector('title', text: user.name)}
    
  end
  
  describe "sugnup page " do
    before {visit signup_path}
    
    it {should have_selector('h1',text:'signup')}
    it{should have_selector('title',text:'signup')}
   
  end
  describe "sign up" do
    before{visit signup_path}
    let(:submit){"Create my account"}
    describe "with invalid information" do
      it "shoud not create a user" do
        expect{click_button submit}.not_to change(User,:count)
    end
  end
    describe "with valid information" do
      before do
        fill_in "name", with: "YangHang"
        fill_in "email",with: "yanghang@gmail.com"
        fill_in "password",with: "foobar"
        fill_in "password_confirmation",with: "foobar"

    end
    it "should create a user"   do
  expect{click_button submit}.to change(User,:count)
  end
  end
end
end
