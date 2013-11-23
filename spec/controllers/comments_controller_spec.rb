require "spec_helper"

describe CommentsController do

    before(:each) do
      @user = User.new(name: "Jake", username: "Jakey", email: "Jake@jake.com", password: "password")
      @post = Post.new(:title => "Titles", :body => "Bodies")
      @post.update_attribute(:user_id, @user.id)

    end

  describe "GET new" do
    it "assigns @comment" do
      get :new, :post_id => @post.id
      expect(assigns(:comment)).to be_a(Comment)
    end
  end

  describe "POST create" do

    before(:each) do
      request.env["HTTP_REFERER"] = posts_path
    end


    it "creates a new Comment" do
      expect {
        post :create, :post_id => @post.id, :comment => {:text => "Titles"}
      }.to change(Comment, :count).by(1)
    end

    it "redirects to the posts path" do
      post :create, :comment => { :text => "Titles" }, :post_id => @post.id
      expect(response).to redirect_to(posts_path)
    end

    it "renders if the post params were invalid" do
      post :create, :post => { :text => ""}, :post_id => @post.id
      expect(assigns(:flash).error).to eq "Your comment is uncool"
    end
  end

describe "GET show" do
    it "displays a Post" do
       comment = Comment.create!(text: "Titles")
      # @comment.update_attribute(:post_id, @post.id)

      get :show, :post_id => @post.id, :id => comment.id

      expect(assigns(:commentgit).id).to eq comment.id
    end
  end

end
