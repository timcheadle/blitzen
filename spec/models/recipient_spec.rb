require 'spec_helper'

describe Recipient do
  let(:recipient) { FactoryGirl.create(:recipient) }
  subject { recipient }

  it { should be_valid }

  it { should respond_to :name }
end
