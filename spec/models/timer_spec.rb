require 'spec_helper'

describe Timer do
  it {should belong_to(:user)}
  it { should allow_mass_assignment_of :updated_at }
end

