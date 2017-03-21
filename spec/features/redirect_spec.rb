require 'rails_helper'

feature 'Url rediect' do
  let(:url) { create(:url, full_url: 'http://google.com') }

  context 'with a valid url' do
    it 'redirects to the correct full url' do
      visit "/#{url.short_url}"
      expect(current_url).to eq "#{url.full_url}/"
    end
  end

  context 'with invalid url' do
    it 'displays an error' do
      visit '/blah'
      expect(current_path).to eq root_path
      expect(page.body).to have_content('Url not found')
    end
  end
end