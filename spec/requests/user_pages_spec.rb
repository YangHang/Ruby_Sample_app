require 'spec_helper'

describe "UserPages" do

  subject {page}

  describe "sugnup page " do
    before {visit signup_path}
    
    it {should have_selector('h1',text:'signup')}
    it{should have_selector('title',text:'signup')}

  end

end
