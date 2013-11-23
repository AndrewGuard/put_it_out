require 'spec_helper'

describe Comment do

  let (:comment) {Comment.new(text: "This is the musky title")}

  it { should allow_mass_assignment_of(:text) }
  it { should belong_to(:user) }
  it { should belong_to(:social_media_user) }
  it { should belong_to(:post) }


end


