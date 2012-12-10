require 'spec_helper'

describe 'Home page' do
  subject { page }

  context 'when not logged in' do
    before { visit root_path }

    it { should have_content 'Blitzen Login' }
    it { should have_content 'Email' }
    it { should have_content 'Password' }
  end
end
