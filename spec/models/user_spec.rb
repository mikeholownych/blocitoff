require 'spec_helper'

describe User do
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:name) }
  it 'should create a valid User' do
    user = FactoryGirl.create(:user)
    user.valid?
    user.email.should match(/@/)
    user.name.should match(/Mike/)
  end
  it 'should be able to sign up with a password, and email address' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'Email', with: 'testuser@domain.com'
    fill_in 'Password', with: 'password'
    fill_in 'Repeat your password', with: 'password'
    click_button 'Sign up'
    current_path.should == '/'
    user = User.last
    user.email.should == 'testuser@domain.com'
    user.confirmation_token.should_not be_nil
    user.confirmation_sent_at.should <= Time.now
  end
  # it 'should be able to sign in' do
  #   user = FactoryGirl.create(:Mike)
  #   user.sign_in_count.should be(0)
  #   visit '/'
  #   click_link 'Sign In'
  #   fill_in 'Email address', with: 'mike@test.com'
  #   fill_in 'Password', with: 'password'
  #   #current_path.should == '/'
  #   click_button "Sign In"
  #   user.authenticated?.
  # end
  # it should be able to sign out' do

  # end   
  it 'should be able to create a single to-do list'
  it 'should be able to create multiple to-do items on its own to-do list'
  it 'should be able to mark to-do items as complete'
  it 'should be able to see how many days are left before a to-do item is automatically deleted'
end
