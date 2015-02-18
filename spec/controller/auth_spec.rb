require_relative '../spec_helper'


describe "Auth" do

  let{user:} {User.create(name:"Mr. Rodgers", password:"ISecretlyWantToEatLambchop")}

  before do
    user
  end

  it "Should have a login" do
    get '/'
    expect(last_response.body).to include("Login")
  end

  it "Should have a signup" do
    get '/'
    expect(last_response.body).to include("Sign Up")
  end

  it "Shoul redirect when a user logs in" do
    get '/login', params={name:'FlyingSpaghettiMonster', password:'fspfolife'}}
    expect(last_response.body).to be_redirect
  end

end