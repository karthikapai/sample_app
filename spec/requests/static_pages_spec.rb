require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Sample App') }
<<<<<<< HEAD
    it { should have_title(full_title('')) }
    it { should_not have_title '| Home' }

    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          page.should have_selector("li##{item.id}", text: item.content)
        end
      end

      describe "follower/following counts" do
        let(:other_user) { FactoryGirl.create(:user) }
        before do
          other_user.follow!(user)
          visit root_path
        end

        it { should have_link("0 following", href: following_user_path(user)) }
        it { should have_link("1 followers", href: followers_user_path(user)) }
      end
    end
=======
   # it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
<<<<<<< HEAD
    it { should have_title(full_title('Help')) }
=======
    #it { should have_selector('title', text: full_title('Help')) }
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
<<<<<<< HEAD
    it { should have_title(full_title('About Us')) }
=======
    #it { should have_selector('title', text: full_title('About Us')) }
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
<<<<<<< HEAD
    it { should have_title(full_title('Contact')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_title full_title('About Us')
    click_link "Help"
    page.should have_title full_title('Help')
    click_link "Contact"
    page.should have_title full_title('Contact')
    click_link "Home"
    click_link "Sign up now!"
    page.should have_title full_title('Sign up')
    click_link "sample app"
    page.should have_selector 'h1', text: 'Sample App'
=======
    #it { should have_selector('title', text: full_title('Contact')) }
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
  end
end