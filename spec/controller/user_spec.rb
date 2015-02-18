require_relative '../spec_helper'


describe "User" do

  let(:user) {User.create(name:"Mr. Rodgers", password: "ISecretlyWantToEatLambchop")}

  before do
    user
  end

   it 'should route you to users/id with correct user info' do
    get "/users/#{user.id}"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Mr. Rodgers")

  end
end