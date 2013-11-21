require 'spec_helper'

describe Post do
  let (:post) {Post.new(title: "This is the musky title", body: "Musk is lovely and awesome", )}



  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
  it { should ensure_length_of(:body).is_at_least(4) }
  it { should ensure_length_of(:title).is_at_most(300) }
  it { should ensure_length_of(:title).is_at_least(4) }

end

