require 'spec_helper'

describe Present do
  let(:present) { FactoryGirl.create(:present) }

  subject { present }

  it { should be_valid }

  it { should respond_to :user }
  it { should respond_to :recipient }
  it { should respond_to :product }
  it { should respond_to :cost }
  it { should respond_to :store }
  it { should respond_to :purchased }
  it { should respond_to :delivered }
  it { should respond_to :given }
  it { should respond_to :split }
end
