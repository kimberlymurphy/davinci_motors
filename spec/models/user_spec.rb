require 'spec_helper'

describe User do
  it { should have_secure_password }
  it { validate_presence_of :password }

  it { should have_many :cars }
end



