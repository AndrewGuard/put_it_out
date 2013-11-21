require "spec_helper"

describe PostsController do


  describe "GET index" do
    it "assigns @posts to all posts" do
      get :index
      expect(assigns(:posts).length).to eq Post.all.length
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET new" do
    it "assigns @post" do
      get :new
      expect(assigns(:post)).to be_a(Post)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST create" do

    it "creates a new Post" do
      expect {
        post :create, :post => { :title => "Titles", :body => "Bodies"}
      }.to change(Post, :count).by(1)
    end

    it "redirects to the posts path" do
      post :create, :post => { :title => "Titles", :body => "Bodies" }

      expect(response).to redirect_to(posts_path)
    end

    it "renders new if the post params were invalid" do
      post :create, :post => { :title => "", :body => "" }

      expect(response).to render_template(:new)
    end
  end

describe "GET show" do
    it "displays a Post" do
      post = Post.create!(title: "Titles", body: "Bodies")

      get :show, :id => post.id

      expect(assigns(:post).id).to eq post.id
    end
  end

end


# describe PostsController do
#   let(:post) {Post.new(title, body)}
#   let(:title) {"My Swanky Blog Post"}
#   let(:body) {"Something some windbag said"}

#   describe "when a post has a title and a body " do

#     it "should display title" do
#      post.title.should eq "My Swanky Blog Post"
#     end

#     it "should display body" do
#       post.body.should eq "Something some windbag said"
#     end
#   end

  # describe "when creating a post" do
  #   it "should create the post" do
  #     expect {
  #       post :create, :post => {title: "My Title", :body => "My Body"}
  #     }.to change(Post, :count).by(1)
  #   end
  # end
# end



