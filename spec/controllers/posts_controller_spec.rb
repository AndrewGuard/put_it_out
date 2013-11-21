require "spec_helper"

describe PostsController do
  let(:post) {Post.new(title, body)}
  let(:title) {"My Swanky Blog Post"}
  let(:body) {"Something some windbag said"}

  describe "when a post has a title and a body " do

    it "should display 'My Swanky Blog Post' " do
     post.title.should eq "My Swanky Blog Post"
    end

    it "should display 'Something some windbag said' " do
      post.body.should eq "Something some windbag said"
    end
  end

  # describe "when creating a post" do
  #   it "should create the post" do
  #     expect {
  #       post :create, :post => {title: "My Title", :body => "My Body"}
  #     }.to change(Post, :count).by(1)
  #   end
  # end
end



