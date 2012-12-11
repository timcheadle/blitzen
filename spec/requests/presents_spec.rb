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

  describe 'create' do
    let(:present) { FactoryGirl.build(:present) }

    before do
      as_user(user).visit root_path
      click_link 'Add Present'
      fill_in :product, with: present.product
      click_button 'Add Present'
    end

    it { should have_selector('li', text: present.product) }
  end
end
