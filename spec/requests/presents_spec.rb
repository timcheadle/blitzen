require 'spec_helper'

describe 'Present pages' do
  let(:user) { FactoryGirl.create(:user) }

  subject { page }

  describe 'index' do
    before do
      10.times { FactoryGirl.create(:present, user: user) }
      as_user(user).visit root_path
    end

    it { should have_selector('title', text: full_title('Presents')) }
  end
end
