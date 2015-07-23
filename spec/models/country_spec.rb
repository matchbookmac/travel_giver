require 'rails_helper'

describe Country do
  it { should validate_presence_of :c_name }
  it { should validate_presence_of :continent }
  it { should validate_presence_of :c_description }
  it { should have_many :projects }
end
