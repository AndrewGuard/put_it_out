require 'spec_helper'

describe SocialMediaUser do
  it {should have_many(:posts)}
  it {should have_many(:comments)}
end
